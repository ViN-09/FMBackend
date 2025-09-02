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
            'timestamp' => $this->clock()
        ]);
    }
}
