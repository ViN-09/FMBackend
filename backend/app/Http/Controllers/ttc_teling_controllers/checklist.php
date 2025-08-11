<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;


class checklist extends Controller
{

    public function getChecklistData($table_name, $kolom_name, $value)
    {
        // Ambil satu data sesuai parameter
        return DB::table($table_name)
            ->where($kolom_name, $value)
            ->first();
    }

    public function checklistPUE(Request $request)
    {
        $jenisReport = $request->query('jenis_report');
        $tanggal = $request->query('tanggal'); // format: YYYY-MM-DD

        if (!$jenisReport || !$tanggal) {
            return response()->json(['error' => 'Parameter jenis_report dan tanggal wajib diisi.'], 400);
        }

        $startOfMonth = Carbon::parse($tanggal)->startOfMonth();
        $endOfMonth = Carbon::parse($tanggal)->endOfMonth();

        $data = DB::table('report_info')
            ->where('jenis_report', $jenisReport)
            ->whereBetween('date_time', [$startOfMonth->toDateString(), $endOfMonth->toDateString()])
            ->orderBy('date_time')
            ->get();

        $DialyChecklist = [];
        $i = 1;

        foreach ($data as $item) {
            $tanggalStr = Carbon::parse($item->date_time)->toDateString();
            $id = $item->no_report;

            $lvmdp1 = $this->getChecklistData('report_lvmdp1', 'id_report_lvmdp1', $id);
            $lvmdp2 = $this->getChecklistData('report_lvmdp2', 'id_report_lvmdp2', $id);
            $it_load = $this->getChecklistData('pm_it', 'id_report', $id);
            $trafo = $this->getChecklistData('load_trafo', 'id', $id);
            $suhu = $this->getChecklistData('report_suhu', 'id_report_suhu', $id);

            $tegangan_lvmdp1 = $lvmdp1 ? [
                $lvmdp1->L1N,
                $lvmdp1->L2N,
                $lvmdp1->L3N,
                $lvmdp1->R1N,
                $lvmdp1->R2N,
                $lvmdp1->R3N
            ] : [];
            $tegangan_lvmdp1_final = count($tegangan_lvmdp1) ? max($tegangan_lvmdp1) : null;

            $tegangan_lvmdp2 = $lvmdp2 ? [
                $lvmdp2->L1N,
                $lvmdp2->L2N,
                $lvmdp2->L3N,
                $lvmdp2->R1N,
                $lvmdp2->R2N,
                $lvmdp2->R3N
            ] : [];
            $tegangan_lvmdp2_final = count($tegangan_lvmdp2) ? max($tegangan_lvmdp2) : null;

            $lvmdp1_load = $lvmdp1?->kv ?? 0;
            $lvmdp2_load = $lvmdp2?->kv ?? 0;
            $total_load_pln = $lvmdp1_load + $lvmdp2_load;

            $kw1 = $it_load?->kw_rec1_2_ups1 ?? 0;
            $kw2 = $it_load?->kw_rec4_ups2 ?? 0;
            $kw3 = $it_load?->kw_rec3_5 ?? 0;
            $kw4 = $it_load?->kw_rec9_10_11_12 ?? 0;
            $total_it_load = $kw1 + $kw2 + $kw3 + $kw4;

            $load_facility = $total_load_pln - $total_it_load;

            $DialyChecklist[$i]['tanggal'] = $item->date_time;
            $DialyChecklist[$i]['lvmdp1_r'] = $lvmdp1?->R ?? null;
            $DialyChecklist[$i]['lvmdp1_s'] = $lvmdp1?->S ?? null;
            $DialyChecklist[$i]['lvmdp1_t'] = $lvmdp1?->T ?? null;
            $DialyChecklist[$i]['lvmdp1_tegangan'] = $tegangan_lvmdp1_final;
            $DialyChecklist[$i]['lvmdp1_load'] = $lvmdp1_load ?: null;

            $DialyChecklist[$i]['lvmdp2_r'] = $lvmdp2?->R ?? null;
            $DialyChecklist[$i]['lvmdp2_s'] = $lvmdp2?->S ?? null;
            $DialyChecklist[$i]['lvmdp2_t'] = $lvmdp2?->T ?? null;
            $DialyChecklist[$i]['lvmdp2_tegangan'] = $tegangan_lvmdp2_final;
            $DialyChecklist[$i]['lvmdp2_load'] = $lvmdp2_load ?: null;

            $DialyChecklist[$i]['faktor_daya'] = $trafo?->PF ?? null;
            $DialyChecklist[$i]['total_load_pln'] = $total_load_pln ?: null;

            $DialyChecklist[$i]['kw_rec1_ups2'] = $kw1 ?: null;
            $DialyChecklist[$i]['kw_rec4_9_ups1'] = $kw2 ?: null;
            $DialyChecklist[$i]['kw_rec3_5'] = $kw3 ?: null;
            $DialyChecklist[$i]['kw_rec10_11_12'] = $kw4 ?: null;
            $DialyChecklist[$i]['total_it_load'] = number_format($total_it_load, 2) ?: null;
            $DialyChecklist[$i]['load_facility'] = number_format($load_facility, 2) ?: null;

            if ($DialyChecklist[$i]['total_it_load'] != 0 && $DialyChecklist[$i]['total_it_load'] !== null) {
                $DialyChecklist[$i]['pue'] = number_format($DialyChecklist[$i]['total_load_pln'] / $DialyChecklist[$i]['total_it_load'], 2);
            } else {
                $DialyChecklist[$i]['pue'] = 'N/A';
            }

            if (
                $DialyChecklist[$i]['faktor_daya'] != 0 && $DialyChecklist[$i]['faktor_daya'] !== null
                && $DialyChecklist[$i]['total_load_pln'] !== null
            ) {
                $occupancy = ($DialyChecklist[$i]['total_load_pln'] / ($DialyChecklist[$i]['faktor_daya'] * 555)) * 100;
                $DialyChecklist[$i]['occupancy_pln'] = number_format($occupancy, 2) . ' %';
            } else {
                $DialyChecklist[$i]['occupancy_pln'] = 'N/A';
            }

            $DialyChecklist[$i]['core'] = $suhu?->RCore ?? null;
            $DialyChecklist[$i]['transmissi'] = $suhu?->RTransmissi ?? null;
            $DialyChecklist[$i]['ran'] = $suhu?->RRan ?? null;
            $DialyChecklist[$i]['genset'] = $suhu?->RGenset ?? null;
            $DialyChecklist[$i]['trafo'] = $suhu?->RTrafo ?? null;

            $i++;
        }

        return response()->json($DialyChecklist);
    }

    public function getDivisionData($table_name, $kolom_name, $value)
{
    $data = DB::table($table_name)
        ->where($kolom_name, $value)
        ->get();

    return response()->json($data);
}

}
