<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class checklist extends Controller
{
    // Pakai koneksi database mysql2
    protected $connection = 'mysql';

    // Ambil satu data sesuai kolom
    public function getChecklistData($table_name, $kolom_name, $value)
    {
        return DB::connection($this->connection)
            ->table($table_name)
            ->where($kolom_name, $value)
            ->first();
    }

    // Ambil data terbaru berdasarkan kolom
    public function getChecklistDataToJSON($table_name, $kolom_name)
    {
        $data = DB::connection($this->connection)
            ->table($table_name)
            ->orderByDesc($kolom_name)
            ->first();

        return response()->json($data);
    }

    // List tabel dan sub-item untuk laporan
    public function tableReportList()
    {
        $data = [
            'staffform' => ['report_info'],
            'suhu_kwh' => ['report_kwh', 'report_suhu'],
            'power' => ['trafof_c', 'load_trafo', 'report_lvmdp1', 'report_lvmdp2'],
            'it_load' => [
                'rec1',
                'rec2',
                'rec3',
                'rec4',
                'rec5',
                'rec6',
                'rec7',
                'rec8',
                'rec9',
                'ups1',
                'ups2',
                'dcpdu_1',
                'dcpdu_2',
                'dcpdu_3',
                'dcpdu_4'
            ],
            'coling_system' => ['pac1', 'pac2', 'pac3', 'pac4', 'pac5', 'pac6', 'pac7', 'pac8', 'pac9', 'pac10'],
            'genset' => ['genset1', 'genset2']
        ];

        return response()->json($data);
    }

    // Terima laporan dari frontend
    // public function reciveReportInfo(Request $request)
    // {
    //     $data = $request->all();
    //     \Log::info('Received data:', $data);

    //     return response()->json([
    //         'status' => 'success',
    //         'received' => $data
    //     ], 200);
    // }


    //ini mantepppppppppppppp

    //     public function reciveReportInfo(Request $request)
// {
//     $data = $request->all();
//     $inserted = [];

    //     try {
//         foreach ($data as $tableName => $columns) {
//             \DB::table($tableName)->insert($columns);
//             $inserted[$tableName] = $columns;
//         }

    //         return response()->json([
//             'status'   => 'success',
//             'message'  => "Data berhasil disimpan",
//             'received' => $data,
//             'inserted' => $inserted
//         ], 200);
//     } catch (\Exception $e) {
//         return response()->json([
//             'status'  => 'error',
//             'message' => $e->getMessage()
//         ], 500);
//     }
// }

    public function reciveReportInfo(Request $request)
    {
        $data = $request->all();
        $inserted = [];
        $idHolderJson = $this->getChecklistDataToJSON('report_info', 'no_report');
        $idHolder = $idHolderJson->getData(); // ambil object dari JsonResponse
        $id = $idHolder->no_report ?? null;

        try {
            foreach ($data as $tableName => $columns) {

                // 🔽 DISINI kamu taruh switch-case untuk olah data sebelum insert
                switch ($tableName) {
                    case 'genset1':
                        $columns['id'] = $id;
                        $literBulanan = (((90 ** 2) * acos((90 - $columns['tanki_bulanan']) / 90)
                            - ((90 - $columns['tanki_bulanan']) * sqrt((2 * 90 * $columns['tanki_bulanan']) - ($columns['tanki_bulanan'] ** 2)))) * 400) / 1000;

                        $literHarian = (((50 ** 2) * acos((50 - $columns['tangki_harian']) / 50)
                            - ((50 - $columns['tangki_harian']) * sqrt((2 * 50 * $columns['tangki_harian']) - ($columns['tangki_harian'] ** 2)))) * 200) / 1000;

                        $columns['liter_harian'] = round($literHarian, 2);
                        $columns['liter_bulanan'] = round($literBulanan, 2);
                        break;
                    case 'genset2':
                        $columns['id'] = $id;
                        $columns['liter_harian'] = (((42.5 ** 2) * acos((42.5 - $columns['tangki_harian']) / 42.5) - ((42.5 - $columns['tangki_harian']) * sqrt((2 * 42.5 * $columns['tangki_harian']) - ($columns['tangki_harian'] ** 2)))) * 180) / 1000;
                        $columns['liter_bulanan'] = (((80 ** 2) * acos((80 - $columns['tanki_bulanan']) / 80) - ((80 - $columns['tanki_bulanan']) * sqrt((2 * 80 * $columns['tanki_bulanan']) - ($columns['tanki_bulanan'] ** 2)))) * 500) / 1000;
                        break;
                    case 'report_kwh':
                        $columns['id_report_kwh'] = $id;
                        break;
                    case 'report_suhu':
                        $columns['id_report_suhu'] = $id;
                        break;
                    case 'trafof_c':
                        $columns['id'] = $id;
                        break;
                    case 'report_lvmdp2':
                        $columns['id_report_lvmdp2'] = $id;
                    break;
                    case 'report_lvmdp1':
                        $columns['id_report_lvmdp1'] = $id;
                    break;
                    case 'load_trafo':
                        $columns['id'] = $id;
                    break;
                    default:
                        // kalau gak ada perlakuan khusus, biarin aja
                        break;
                }
                // 🔼 sampe sini logic suntikan data

                // lakukan insert ke database
                \DB::table($tableName)->insert($columns);

                // simpan hasil ke response
                $inserted[$tableName] = $columns;
            }

            return response()->json([
                'status' => 'success',
                'message' => "Data berhasil disimpan",
                'received' => $data,
                'inserted' => $inserted
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }


    // Ambil daily checklist PUE
    public function checklistPUE(Request $request)
    {
        $jenisReport = $request->query('jenis_report');
        $tanggal = $request->query('tanggal');

        if (!$jenisReport || !$tanggal) {
            return response()->json(['error' => 'Parameter jenis_report dan tanggal wajib diisi.'], 400);
        }

        $startOfMonth = Carbon::parse($tanggal)->startOfMonth();
        $endOfMonth = Carbon::parse($tanggal)->endOfMonth();

        $data = DB::connection($this->connection)
            ->table('report_info')
            ->where('jenis_report', $jenisReport)
            ->whereBetween('date_time', [$startOfMonth->toDateString(), $endOfMonth->toDateString()])
            ->orderBy('date_time')
            ->get();

        $DialyChecklist = [];
        $i = 1;

        foreach ($data as $item) {
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

            $DialyChecklist[$i]['pue'] = ($DialyChecklist[$i]['total_it_load'] != 0 && $DialyChecklist[$i]['total_it_load'] !== null)
                ? number_format($DialyChecklist[$i]['total_load_pln'] / $DialyChecklist[$i]['total_it_load'], 2)
                : 'N/A';

            $DialyChecklist[$i]['occupancy_pln'] = ($DialyChecklist[$i]['faktor_daya'] != 0 && $DialyChecklist[$i]['faktor_daya'] !== null && $DialyChecklist[$i]['total_load_pln'] !== null)
                ? number_format(($DialyChecklist[$i]['total_load_pln'] / ($DialyChecklist[$i]['faktor_daya'] * 555)) * 100, 2) . ' %'
                : 'N/A';

            $DialyChecklist[$i]['core'] = $suhu?->RCore ?? null;
            $DialyChecklist[$i]['transmissi'] = $suhu?->RTransmissi ?? null;
            $DialyChecklist[$i]['ran'] = $suhu?->RRan ?? null;
            $DialyChecklist[$i]['genset'] = $suhu?->RGenset ?? null;
            $DialyChecklist[$i]['trafo'] = $suhu?->RTrafo ?? null;

            $i++;
        }

        return response()->json($DialyChecklist);
    }

    // Ambil data dari table sesuai kolom
    public function getDivisionData($table_name, $kolom_name, $value)
    {
        $data = DB::connection($this->connection)
            ->table($table_name)
            ->where($kolom_name, $value)
            ->get();

        return response()->json($data);
    }
}
