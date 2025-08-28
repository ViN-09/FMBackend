<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
Carbon::setLocale('id');

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
                'pm_it',
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
                    case 'pm_it':
                        $columns['id_report'] = $id;
                        break;
                    case 'rec1':
                    case 'rec2':
                    case 'rec3':
                    case 'rec4':
                    case 'rec5':
                    case 'rec6':
                    case 'rec7':
                    case 'rec8':
                    case 'rec9':
                    case 'dcpdu_1':
                    case 'dcpdu_2':
                    case 'dcpdu_3':
                    case 'dcpdu_4':
                    case 'ups1':
                    case 'ups2':
                    case 'pac1':
                    case 'pac2':
                    case 'pac3':
                    case 'pac4':
                    case 'pac5':
                    case 'pac6':
                    case 'pac7':
                    case 'pac8':
                    case 'pac9':
                    case 'pac10':
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

    public function updateLatestReportStatus()
    {
        DB::table('report_info')
            ->orderByDesc('no_report')
            ->limit(1)
            ->update(['status' => 1]);

        return response()->json([
            'success' => true,
            'message' => 'Status pada record terbaru berhasil diupdate menjadi 3'
        ]);
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
            ->where('status', 1)
            ->whereBetween('date_time', [$startOfMonth->toDateString(), $endOfMonth->toDateString()])
            ->orderBy('date_time')
            ->get();

        $DialyChecklist = [];
        $i = 1;

        foreach ($data as $item) {
            $id = $item->no_report;
            $me1 = $item->petugasME;
            $me2 = $item->petugasME2;
            $me3 = $item->petugasME3;
            $me4 = $item->petugasME4;
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas2 = $this->getChecklistData('user_bio', 'id', $me2);
            $Petugas3 = $this->getChecklistData('user_bio', 'id', $me3);
            $Petugas4 = $this->getChecklistData('user_bio', 'id', $me4);


            $kwhPLN = $this->getChecklistData('report_kwh', 'id_report_kwh', $id);
            $lvmdp1 = $this->getChecklistData('report_lvmdp1', 'id_report_lvmdp1', $id);
            $lvmdp2 = $this->getChecklistData('report_lvmdp2', 'id_report_lvmdp2', $id);
            $it_load = $this->getChecklistData('pm_it', 'id_report', $id);
            $trafo = $this->getChecklistData('load_trafo', 'id', $id);
            $suhu = $this->getChecklistData('report_suhu', 'id_report_suhu', $id);
            $trafo_c = $this->getChecklistData('trafof_c', 'id', $id);
            $ups1 = $this->getChecklistData('ups1', 'id', $id);
            $ups2 = $this->getChecklistData('ups2', 'id', $id);
            $rec1 = $this->getChecklistData('rec1', 'id', $id);
            $rec2 = $this->getChecklistData('rec2', 'id', $id);
            $rec3 = $this->getChecklistData('rec3', 'id', $id);
            $rec4 = $this->getChecklistData('rec4', 'id', $id);
            $rec5 = $this->getChecklistData('rec5', 'id', $id);
            $rec6 = $this->getChecklistData('rec6', 'id', $id);
            $rec7 = $this->getChecklistData('rec7', 'id', $id);
            $rec8 = $this->getChecklistData('rec8', 'id', $id);
            $rec9 = $this->getChecklistData('rec9', 'id', $id);
            $dcpdu1 = $this->getChecklistData('dcpdu_1', 'id', $id);
            $dcpdu2 = $this->getChecklistData('dcpdu_2', 'id', $id);
            $dcpdu3 = $this->getChecklistData('dcpdu_3', 'id', $id);
            $dcpdu4 = $this->getChecklistData('dcpdu_4', 'id', $id);



            $pac1 = $this->getChecklistData('pac1', 'id', $id);
            $pac2 = $this->getChecklistData('pac2', 'id', $id);
            $pac3 = $this->getChecklistData('pac3', 'id', $id);
            $pac4 = $this->getChecklistData('pac4', 'id', $id);
            $pac5 = $this->getChecklistData('pac5', 'id', $id);
            $pac6 = $this->getChecklistData('pac6', 'id', $id);
            $pac7 = $this->getChecklistData('pac7', 'id', $id);
            $pac8 = $this->getChecklistData('pac8', 'id', $id);
            $pac9 = $this->getChecklistData('pac9', 'id', $id);
            $pac10 = $this->getChecklistData('pac10', 'id', $id);




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

            $lvmdp1_load = $lvmdp1?->kw ?? 0;
            $lvmdp2_load = $lvmdp2?->kw ?? 0;
            $total_load_pln = $lvmdp1_load + $lvmdp2_load;

            $kw1 = $it_load?->kw_rec1_2_ups1 ?? 0;
            $kw2 = $it_load?->kw_rec4_ups2 ?? 0;
            $kw3 = $it_load?->kw_rec3_5 ?? 0;
            $kw4 = $it_load?->kw_rec9_10_11_12 ?? 0;
            $total_it_load = $kw1 + $kw2 + $kw3 + $kw4;

            $load_facility = $total_load_pln - $total_it_load;

            $DialyChecklist[$i]['tanggal'] = $item->date_time;
            $datetime = Carbon::parse($DialyChecklist[$i]['tanggal']);
            $DialyChecklist[$i]['tanggal_formatted'] = $datetime->translatedFormat('l, d-m-Y');
            $DialyChecklist[$i]['jam'] = $datetime->format('H:i');

            $DialyChecklist[$i]['bp'] = $kwhPLN->bp ?? null;
            $DialyChecklist[$i]['lbp'] = $kwhPLN->lbp ?? null;
            $DialyChecklist[$i]['kvar'] = $kwhPLN->kvar ?? null;
            $DialyChecklist[$i]['total'] = $kwhPLN->total ?? null;
            $DialyChecklist[$i]['Petugas1'] = $Petugas1->Nama ?? null;
            $DialyChecklist[$i]['Petugas1NO'] = $Petugas1->noTELP ?? null;
            $DialyChecklist[$i]['Petugas2'] = $Petugas2->Nama ?? null;
            $DialyChecklist[$i]['Petugas2NO'] = $Petugas2->noTELP ?? null;
            $DialyChecklist[$i]['Petugas3'] = $Petugas3->Nama ?? null;
            $DialyChecklist[$i]['Petugas3NO'] = $Petugas3->noTELP ?? null;
            $DialyChecklist[$i]['Petugas4'] = $Petugas4->Nama ?? null;
            $DialyChecklist[$i]['Petugas4NO'] = $Petugas4->noTELP ?? null;

            $DialyChecklist[$i]['lvmdp1_r'] = $lvmdp1?->R ?? null;
            $DialyChecklist[$i]['lvmdp1_s'] = $lvmdp1?->S ?? null;
            $DialyChecklist[$i]['lvmdp1_t'] = $lvmdp1?->T ?? null;
            $DialyChecklist[$i]['lvmdp1_tegangan'] = $tegangan_lvmdp1_final;
            $DialyChecklist[$i]['lvmdp1_load'] = $lvmdp1_load ?: null;
            $DialyChecklist[$i]['lvmdp1_load_r_s'] = $lvmdp1?->R1N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_r_t'] = $lvmdp1?->R2N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_s_t'] = $lvmdp1?->R3N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_r_n'] = $lvmdp1?->L1N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_s_n'] = $lvmdp1?->L2N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_t_n'] = $lvmdp1?->L3N ?? 0;
            $DialyChecklist[$i]['lvmdp1_load_lvmdp1_kva'] = $lvmdp1?->kva ?? 0;

            $DialyChecklist[$i]['lvmdp2_r'] = $lvmdp2?->R ?? null;
            $DialyChecklist[$i]['lvmdp2_s'] = $lvmdp2?->S ?? null;
            $DialyChecklist[$i]['lvmdp2_t'] = $lvmdp2?->T ?? null;
            $DialyChecklist[$i]['lvmdp2_load_r_s'] = $lvmdp2?->R1N ?? 0;
            $DialyChecklist[$i]['lvmdp2_load_r_t'] = $lvmdp2?->R2N ?? 0;
            $DialyChecklist[$i]['lvmdp2_load_s_t'] = $lvmdp2?->R3N ?? 0;
            $DialyChecklist[$i]['lvmdp2_load_r_n'] = $lvmdp2?->L1N ?? 0;
            $DialyChecklist[$i]['lvmdp2_load_s_n'] = $lvmdp2?->L2N ?? 0;
            $DialyChecklist[$i]['lvmdp2_load_t_n'] = $lvmdp2?->L3N ?? 0;

            $DialyChecklist[$i]['lvmdp2_tegangan'] = $tegangan_lvmdp2_final;
            $DialyChecklist[$i]['lvmdp2_load'] = $lvmdp2_load ?: null;
            $DialyChecklist[$i]['lvmdp2_kva'] = $lvmdp2?->kva ?? 0;

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
            $DialyChecklist[$i]['battery'] = $suhu?->RBattery ?? null;
            $DialyChecklist[$i]['transmissi'] = $suhu?->RTransmissi ?? null;
            $DialyChecklist[$i]['ran'] = $suhu?->RRan ?? null;
            $DialyChecklist[$i]['genset'] = $suhu?->RGenset ?? null;
            $DialyChecklist[$i]['trafo'] = $suhu?->RTrafo ?? null;

            $upsFields = ['no', 'brand', 'type', 'kw', 'kva', 'battery', 'runtime', 'a'];
            for ($u = 1; $u <= 2; $u++) {
                $upsVar = ${"ups$u"} ?? null;
                foreach ($upsFields as $field) {
                    $DialyChecklist[$i]["ups{$u}_{$field}"] = $upsVar?->{$field} ?? null;
                }
            }

            // Loop untuk ups1 & ups2
            for ($u = 1; $u <= 2; $u++) {
                $upsVar = ${"ups$u"} ?? null;
                foreach ($upsFields as $field) {
                    $DialyChecklist[$i]["ups{$u}_{$field}"] = $upsVar?->{$field} ?? null;
                }

                // pastikan jadi number
                $upstype = (int) ($DialyChecklist[$i]["ups{$u}_type"] ?? 0);
                $upskva = (float) ($DialyChecklist[$i]["ups{$u}_kva"] ?? 0);

                if ($upstype > 0) {
                    $upsOcc = number_format(($upskva / $upstype) * 100, 2);
                } else {
                    $upsOcc = null; // atau 0 kalau mau default
                }

                // debug simpan variabel
                $DialyChecklist[$i]["ups{$u}_occ"] = $upsOcc;
            }

            $dcpduFields = ['noDCPDU', 'source', 'aV', 'aA', 'bV', 'bA', 'cV', 'cA', 'dV', 'dA',];
            for ($u = 1; $u <= 4; $u++) {
                $dcpduvar = ${"dcpdu$u"} ?? null;
                foreach ($dcpduFields as $field) {
                    $DialyChecklist[$i]["dcpdu{$u}_{$field}"] = $dcpduvar?->{$field} ?? null;
                }

                // pastikan jadi number
                $upstype = (int) ($DialyChecklist[$i]["ups{$u}_type"] ?? 0);
                $upskva = (float) ($DialyChecklist[$i]["ups{$u}_kva"] ?? 0);

                if ($upstype > 0) {
                    $upsOcc = number_format(($upskva / $upstype) * 100, 2);
                } else {
                    $upsOcc = null; // atau 0 kalau mau default
                }

                // debug simpan variabel
                $DialyChecklist[$i]["ups{$u}_occ"] = $upsOcc;
            }




            for ($r = 1; $r <= 9; $r++) {
                $recVar = ${"rec$r"} ?? null;

                $DialyChecklist[$i]["rec{$r}_Nama"] = $recVar?->Nama ?? null;
                $DialyChecklist[$i]["rec{$r}_Brand"] = $recVar?->Brand ?? null;
                $DialyChecklist[$i]["rec{$r}_BebanTotal"] = $recVar?->BebanTotal ?? null;
                $DialyChecklist[$i]["rec{$r}_CapsRec"] = $recVar?->CapsRec ?? null;
                $DialyChecklist[$i]["rec{$r}_TotalLoad"] = $recVar?->TotalLoad ?? null;

                $totalLoad = is_numeric($DialyChecklist[$i]["rec{$r}_TotalLoad"]) ? $DialyChecklist[$i]["rec{$r}_TotalLoad"] : 0;
                $bebanTotal = is_numeric($DialyChecklist[$i]["rec{$r}_BebanTotal"]) ? $DialyChecklist[$i]["rec{$r}_BebanTotal"] : 0;

                $DialyChecklist[$i]["rec{$r}_Ocupanccy"] = $bebanTotal != 0 ? number_format(($totalLoad / $bebanTotal) * 100, 2) : 0;

                $DialyChecklist[$i]["rec{$r}_Status"] = $recVar?->Status ?? null;
            }


            for ($p = 1; $p <= 10; $p++) {
                $pacVar = ${"pac{$p}"} ?? null;

                $DialyChecklist[$i]["pac{$p}_Nama"] = $pacVar?->Nama ?? null;
                $DialyChecklist[$i]["pac{$p}_Tipe"] = $pacVar?->Tipe ?? null;
                $DialyChecklist[$i]["pac{$p}_Suhu"] = $pacVar?->Suhu ?? null;
                $DialyChecklist[$i]["pac{$p}_Kelembaban"] = $pacVar?->Kelembaban ?? null;
                $DialyChecklist[$i]["pac{$p}_SetPoint"] = $pacVar?->SetPoint ?? null;
                $DialyChecklist[$i]["pac{$p}_Status"] = $pacVar?->Status ?? null;
            }


            $DialyChecklist[$i]['TrafoCaps'] = $trafo_c?->TrafoCaps ?? null;
            $DialyChecklist[$i]['GensetTotal'] = $trafo_c?->GensetTotal ?? null;
            $DialyChecklist[$i]['PACTotal'] = $trafo_c?->PACTotal ?? null;
            $DialyChecklist[$i]['RECTotal'] = $trafo_c?->RECTotal ?? null;
            $DialyChecklist[$i]['UPSTotal'] = $trafo_c?->UPSTotal ?? null;

            $DialyChecklist[$i]['GensetF'] = $trafo_c?->GensetF ?? null;
            $DialyChecklist[$i]['PACF'] = $trafo_c?->PACF ?? null;
            $DialyChecklist[$i]['RECF'] = $trafo_c?->RECF ?? null;
            $DialyChecklist[$i]['UPSF'] = $trafo_c?->UPSF ?? null;

            $DialyChecklist[$i]['Cuaca'] = $trafo_c?->Cuaca ?? null;





            $i++;
        }

        return response()->json($DialyChecklist);
    }

    public function Genset1(Request $request)
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
            $me1 = $item->petugasME;
            $me2 = $item->petugasME2;
            $me3 = $item->petugasME3;
            $me4 = $item->petugasME4;

            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas2 = $this->getChecklistData('user_bio', 'id', $me2);
            $Petugas3 = $this->getChecklistData('user_bio', 'id', $me3);
            $Petugas4 = $this->getChecklistData('user_bio', 'id', $me4);

            $genset = $this->getChecklistData('genset1', 'id', $id);
            $DialyChecklist[$i]['tanggal'] = $item->date_time;
            $datetime = Carbon::parse($DialyChecklist[$i]['tanggal']);
            $DialyChecklist[$i]['tanggal_formatted'] = $datetime->translatedFormat('l, d-m-Y');
            $DialyChecklist[$i]['jam'] = $datetime->format('H:i');

            $DialyChecklist[$i]['Petugas1'] = $Petugas1->Nama ?? null;
            $DialyChecklist[$i]['Petugas1NO'] = $Petugas1->noTELP ?? null;
            $DialyChecklist[$i]['Petugas2'] = $Petugas2->Nama ?? null;
            $DialyChecklist[$i]['Petugas2NO'] = $Petugas2->noTELP ?? null;
            $DialyChecklist[$i]['Petugas3'] = $Petugas3->Nama ?? null;
            $DialyChecklist[$i]['Petugas3NO'] = $Petugas3->noTELP ?? null;
            $DialyChecklist[$i]['Petugas4'] = $Petugas4->Nama ?? null;
            $DialyChecklist[$i]['Petugas4NO'] = $Petugas4->noTELP ?? null;
            $DialyChecklist[$i]['proses'] = $genset?->prosses ?? null;
            $DialyChecklist[$i]['gen_on'] = $genset?->gen_on ?? null;
            $DialyChecklist[$i]['gen_off'] = $genset?->gen_off ?? null;
            $DialyChecklist[$i]['tanki_bulanan'] = $genset?->tanki_bulanan ?? null;
            $DialyChecklist[$i]['tangki_harian'] = $genset?->tangki_harian ?? null;
            $DialyChecklist[$i]['liter_harian'] = $genset?->liter_harian ?? null;
            $DialyChecklist[$i]['liter_bulanan'] = $genset?->liter_bulanan ?? null;
            $DialyChecklist[$i]['suhu'] = $genset?->suhu ?? null;
            $DialyChecklist[$i]['hours_mater'] = $genset?->hours_mater ?? null;
            $DialyChecklist[$i]['date'] = $genset?->date ?? null;
            $i++;
        }

        return response()->json($DialyChecklist);
    }

    public function Genset2(Request $request)
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
            $me1 = $item->petugasME;
            $me2 = $item->petugasME2;
            $me3 = $item->petugasME3;
            $me4 = $item->petugasME4;
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas2 = $this->getChecklistData('user_bio', 'id', $me2);
            $Petugas3 = $this->getChecklistData('user_bio', 'id', $me3);
            $Petugas4 = $this->getChecklistData('user_bio', 'id', $me4);

            $genset = $this->getChecklistData('genset2', 'id', $id);

            $DialyChecklist[$i]['tanggal'] = $item->date_time;
            $datetime = Carbon::parse($DialyChecklist[$i]['tanggal']);
            $DialyChecklist[$i]['tanggal_formatted'] = $datetime->translatedFormat('l, d-m-Y');
            $DialyChecklist[$i]['jam'] = $datetime->format('H:i');

            $DialyChecklist[$i]['Petugas1'] = $Petugas1->Nama ?? null;
            $DialyChecklist[$i]['Petugas1NO'] = $Petugas1->noTELP ?? null;
            $DialyChecklist[$i]['Petugas2'] = $Petugas2->Nama ?? null;
            $DialyChecklist[$i]['Petugas2NO'] = $Petugas2->noTELP ?? null;
            $DialyChecklist[$i]['Petugas3'] = $Petugas3->Nama ?? null;
            $DialyChecklist[$i]['Petugas3NO'] = $Petugas3->noTELP ?? null;
            $DialyChecklist[$i]['Petugas4'] = $Petugas4->Nama ?? null;
            $DialyChecklist[$i]['Petugas4NO'] = $Petugas4->noTELP ?? null;

            $DialyChecklist[$i]['proses'] = $genset?->prosses ?? null;
            $DialyChecklist[$i]['gen_on'] = $genset?->gen_on ?? null;
            $DialyChecklist[$i]['gen_off'] = $genset?->gen_off ?? null;
            $DialyChecklist[$i]['tanki_bulanan'] = $genset?->tanki_bulanan ?? null;
            $DialyChecklist[$i]['tangki_harian'] = $genset?->tangki_harian ?? null;
            $DialyChecklist[$i]['liter_harian'] = $genset?->liter_harian ?? null;
            $DialyChecklist[$i]['liter_bulanan'] = $genset?->liter_bulanan ?? null;
            $DialyChecklist[$i]['suhu'] = $genset?->suhu ?? null;
            $DialyChecklist[$i]['hours_mater1'] = $genset?->hours_mater1 ?? null;
            $DialyChecklist[$i]['hours_mater2'] = $genset?->hours_mater2 ?? null;
            $DialyChecklist[$i]['date'] = $genset?->date ?? null;
            $i++;
        }

        return response()->json($DialyChecklist);
    }

    public function SUKwh(Request $request)
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
            $me1 = $item->petugasME;
            $me2 = $item->petugasME2;
            $me3 = $item->petugasME3;
            $me4 = $item->petugasME4;
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas1 = $this->getChecklistData('user_bio', 'id', $me1);
            $Petugas2 = $this->getChecklistData('user_bio', 'id', $me2);
            $Petugas3 = $this->getChecklistData('user_bio', 'id', $me3);
            $Petugas4 = $this->getChecklistData('user_bio', 'id', $me4);


            $suhu = $this->getChecklistData('report_suhu', 'id_report_suhu', $id);
            $kwh = $this->getChecklistData('report_kwh', 'id_report_kwh', $id);

            $DialyChecklist[$i]['tanggal'] = $item->date_time;
            $datetime = Carbon::parse($DialyChecklist[$i]['tanggal']);
            $DialyChecklist[$i]['tanggal_formatted'] = $datetime->translatedFormat('l, d-m-Y');
            $DialyChecklist[$i]['jam'] = $datetime->format('H:i');

            $DialyChecklist[$i]['Petugas1'] = $Petugas1->Nama ?? null;
            $DialyChecklist[$i]['Petugas1NO'] = $Petugas1->noTELP ?? null;
            $DialyChecklist[$i]['Petugas2'] = $Petugas2->Nama ?? null;
            $DialyChecklist[$i]['Petugas2NO'] = $Petugas2->noTELP ?? null;
            $DialyChecklist[$i]['Petugas3'] = $Petugas3->Nama ?? null;
            $DialyChecklist[$i]['Petugas3NO'] = $Petugas3->noTELP ?? null;
            $DialyChecklist[$i]['Petugas4'] = $Petugas4->Nama ?? null;
            $DialyChecklist[$i]['Petugas4NO'] = $Petugas4->noTELP ?? null;
            $DialyChecklist[$i]['RTrafo'] = $suhu?->RTrafo ?? null;
            $DialyChecklist[$i]['RGenset'] = $suhu?->RGenset ?? null;
            $DialyChecklist[$i]['RBattery'] = $suhu?->RBattery ?? null;
            $DialyChecklist[$i]['RKontrol'] = $suhu?->RKontrol ?? null;
            $DialyChecklist[$i]['RRan'] = $suhu?->RRan ?? null;
            $DialyChecklist[$i]['RTransmissi'] = $suhu?->RTransmissi ?? null;
            $DialyChecklist[$i]['RCore'] = $suhu?->RCore ?? null;
            $DialyChecklist[$i]['bp'] = $kwh?->bp ?? null;
            $DialyChecklist[$i]['lbp'] = $kwh?->lbp ?? null;
            $DialyChecklist[$i]['kvar'] = $kwh?->kvar ?? null;
            $DialyChecklist[$i]['total'] = $kwh?->total ?? null;
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
