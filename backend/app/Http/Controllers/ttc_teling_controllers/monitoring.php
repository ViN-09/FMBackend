<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class Monitoring extends Controller
{
    protected $connection = 'mysql';

    // =====================
    // Clock helper (WITA)
    // =====================
    public function clock(): string
    {
        return Carbon::now('Asia/Makassar')->format('Y-m-d H:i:s');
    }

    // =====================
    // Generate latest PUE
    // =====================
    private function generatePUE(): float
    {
        $latest = DB::connection($this->connection)
            ->table('cacepue')
            ->orderBy('created_at', 'desc')
            ->first();

        return ($latest && isset($latest->pue)) ? (float) $latest->pue : 0.0;
    }

    // =====================
    // Generate daily PUE
    // =====================
    private function generateDailyPUE(): array
    {
        $today = Carbon::parse($this->clock())->toDateString();

        $results = DB::select("
            SELECT DATE_FORMAT(MIN(`date`), '%H:%i') AS jam_interval,
                   AVG(pue) AS avg_pue
            FROM data_pue
            WHERE DATE(`date`) = ?
            GROUP BY HOUR(`date`), FLOOR(MINUTE(`date`) / 10)
            ORDER BY jam_interval ASC
        ", [$today]);

        $pueData = [];
        foreach ($results as $row) {
            $pueData[$row->jam_interval] = round((float) $row->avg_pue, 2);
        }

        return $pueData;
    }

    // =====================
    // Generate latest load
    // =====================
    private function generateLoad(): array
    {
        $latest = DB::connection($this->connection)
            ->table('cacepue')
            ->orderBy('created_at', 'desc')
            ->first();

        if ($latest) {
            $pln = isset($latest->total_load_pln) ? (float) $latest->total_load_pln : 0.0;
            $it = isset($latest->total_load_it_telco) ? (float) $latest->total_load_it_telco : 0.0;
            $facility = $pln - $it;

            return [
                'PLN' => $pln,
                'IT' => $it,
                'Facility' => round($facility, 2),
            ];
        }

        // default random jika tabel kosong
        return [
            'PLN' => mt_rand(10, 30) / 10,
            'IT' => mt_rand(10, 30) / 10,
            'Facility' => 0.0,
        ];
    }

    // =====================
    // Generate daily load
    // =====================
    private function generateDailyLoad(): array
    {
        $today = Carbon::parse($this->clock())->toDateString();

        $results = DB::select("
            SELECT DATE_FORMAT(MIN(`date`), '%H:%i') AS jam_interval,
                   AVG(total_load_pln) AS avg_total_load_pln,
                   AVG(total_load_it_telco) AS avg_total_load_it_telco
            FROM data_pue
            WHERE DATE(`date`) = ?
            GROUP BY HOUR(`date`), FLOOR(MINUTE(`date`) / 10)
            ORDER BY jam_interval ASC
        ", [$today]);

        $dailyLoad = [];
        foreach ($results as $row) {
            $dailyLoad[$row->jam_interval]['PLN'] = round((float) $row->avg_total_load_pln, 2);
            $dailyLoad[$row->jam_interval]['IT'] = round((float) $row->avg_total_load_it_telco, 2);
            $dailyLoad[$row->jam_interval]['Facility'] =
                round($dailyLoad[$row->jam_interval]['PLN'] - $dailyLoad[$row->jam_interval]['IT'], 2);
        }

        return $dailyLoad;
    }

    // =====================
    // Generate random suhu/humidity
    // =====================
    public function suhu(): array
    {
        $rooms = ['Trafo', 'Genset', 'Battery', 'Transmissi', 'RAN', 'Core', 'CRoom'];
        $SuhuTemp = [];

        foreach ($rooms as $room) {
            $SuhuTemp[$room] = [
                'Suhu' => round(mt_rand(100, 500) / 100, 1),
                'Humidity' => round(mt_rand(100, 500) / 100, 1),
            ];
        }

        return $SuhuTemp;
    }

    public function weeklyPUE(): array
{
    $results = DB::select("
        SELECT 
            DATE(`date`) AS tgl,
            AVG(kw_lv1) AS avg_kw_lv1,
            AVG(kva_lv1) AS avg_kva_lv1,
            AVG(kw_lv2) AS avg_kw_lv2,
            AVG(kva_lv2) AS avg_kva_lv2,
            AVG(total_kva_pln) AS avg_total_kva_pln,
            AVG(total_load_pln) AS avg_total_load_pln,
            AVG(kw_rec1_2_ups1) AS avg_kw_rec1_2_ups1,
            AVG(kva_rec1_2_ups1) AS avg_kva_rec1_2_ups1,
            AVG(kw_rec4_ups2) AS avg_kw_rec4_ups2,
            AVG(kva_rec4_ups2) AS avg_kva_rec4_ups2,
            AVG(kw_rec3_5) AS avg_kw_rec3_5,
            AVG(kva_rec3_5) AS avg_kva_rec3_5,
            AVG(kw_rec9_10_11_12) AS avg_kw_rec9_10_11_12,
            AVG(kva_rec9_10_11_12) AS avg_kva_rec9_10_11_12,
            AVG(total_kva_it_telco) AS avg_total_kva_it_telco,
            AVG(total_load_it_telco) AS avg_total_load_it_telco,
            AVG(pue) AS avg_pue
        FROM data_pue
        WHERE `date` >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
        GROUP BY DATE(`date`)
        ORDER BY tgl ASC
    ");

    $weeklyData = [];
    $i=1;
    foreach ($results as $row) {
        $pln=round((float) $row->avg_total_kva_pln, 2);
        $it=round((float) $row->avg_total_kva_it_telco, 2);
        $loadFacility=$pln-$it;
        $weeklyData[$i] = [
            'tanggal' => $row->tgl,
            'kw_lv1' => round((float) $row->avg_kw_lv1, 2),
            'kva_lv1' => round((float) $row->avg_kva_lv1, 2),
            'kw_lv2' => round((float) $row->avg_kw_lv2, 2),
            'kva_lv2' => round((float) $row->avg_kva_lv2, 2),
            'total_kva_pln' => round((float) $row->avg_total_kva_pln, 2),
            'total_load_pln' => round((float) $row->avg_total_load_pln, 2),
            'kw_rec1_2_ups1' => round((float) $row->avg_kw_rec1_2_ups1, 2),
            'kva_rec1_2_ups1' => round((float) $row->avg_kva_rec1_2_ups1, 2),
            'kw_rec4_ups2' => round((float) $row->avg_kw_rec4_ups2, 2),
            'kva_rec4_ups2' => round((float) $row->avg_kva_rec4_ups2, 2),
            'kw_rec3_5' => round((float) $row->avg_kw_rec3_5, 2),
            'kva_rec3_5' => round((float) $row->avg_kva_rec3_5, 2),
            'kw_rec9_10_11_12' => round((float) $row->avg_kw_rec9_10_11_12, 2),
            'kva_rec9_10_11_12' => round((float) $row->avg_kva_rec9_10_11_12, 2),
            'total_kva_it_telco' => round((float) $row->avg_total_kva_it_telco, 2),
            'total_load_it_telco' => round((float) $row->avg_total_load_it_telco, 2),
            'load_facility'=> round($loadFacility,2),
            'pue' => round((float) $row->avg_pue, 3), // PUE gue kasih presisi 3 digit biar lebih detail
        ];
        $i++;
    }

    return $weeklyData;
}

    // =====================
    // Public Endpoints
    // =====================
    public function index()
    {
        return response()->json([
            'status' => 'success',
            'pue' => $this->generatePUE()
        ]);
    }

    public function dailyPUE()
    {
        return response()->json([
            'status' => 'success',
            'value' => $this->generateDailyPUE()
        ]);
    }

    public function load()
    {
        return response()->json([
            'status' => 'success',
            'load' => $this->generateLoad()
        ]);
    }

    public function dataMonitoring()
    {
        return response()->json([
            'status' => 'success',
            'pue' => $this->generatePUE(),
            'dailyPUE' => $this->generateDailyPUE(),
            'load' => $this->generateLoad(),
            'dailyLOAD' => $this->generateDailyLoad(),
            'suhuTemp' => $this->suhu(),
            'weeklypue' => $this->weeklyPUE(),
            'timestamp' => $this->clock()
        ]);
    }
}
