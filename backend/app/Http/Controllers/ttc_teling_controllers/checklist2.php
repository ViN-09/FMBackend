<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use PhpParser\Node\Stmt\Switch_;

Carbon::setLocale('id');

class Checklist2 extends Controller
{
    // Pakai koneksi database mysql2 (ubah kalau koneksinya beda)
    protected $connection = 'mysql';

    /**
     * Ambil 20 data terakhir dari tabel report_info
     * hanya yang jenis_report-nya Ceklist, KWH, atau Suhu
     */
    private function getDialyActivityList()
    {
        return DB::connection($this->connection)
            ->table('report_info')
            ->select('no_report', 'petugasME', 'petugasME2', 'petugasME3', 'petugasME4', 'jenis_report', 'date_time', 'status')
            ->whereIn('jenis_report', ['Ceklist', 'KWH & Suhu','Genset1','Genset2'])
            ->orderBy('date_time', 'desc')
            ->limit(200)
            ->get();
    }

    private function idName($id)
    {
        $user = DB::table('user_bio')
            ->select('Nama')
            ->where('id', $id)
            ->first();

        return $user ? $user->Nama : null;
    }
    private function idNumber($id)
    {
        $user = DB::table('user_bio')
            ->select('noTELP')
            ->where('id', $id)
            ->first();

        return $user ? $user->noTELP : null;
    }

    /**
     * Endpoint publik untuk ambil data via API
     */
    public function showDialyActivity()
    {
        $i = 1;
        $datatest = [];
        $data = $this->getDialyActivityList();
        $dialyActivityList = [];
        foreach ($data as $row => $list) {
            $datatest[$i]['no_report'] = $list->no_report;
            $datatest[$i]['Petugas1'] = $this->idName($list->petugasME);
            $datatest[$i]['Petugas2'] = $this->idName($list->petugasME2);
            $datatest[$i]['Petugas3'] = $this->idName($list->petugasME3);
            $datatest[$i]['Petugas4'] = $this->idName($list->petugasME4);
            $datatest[$i]['Report'] = $list->jenis_report;
            $datatest[$i]['Date'] = $list->date_time;

            $i++;
        }
        $dialyActivityList['DialyActivityList'] = $datatest;

        // print_r($dialyActivityList);
        return response()->json($dialyActivityList);
    }




    /////////////////CREATING SINGLE REPORT
    private function tableReportList($category = null)
    {
        $data = [
            'staffform' => ['report_info'],
            'property' => ['trafof_c'],
            'power' => ['report_lvmdp1', 'report_lvmdp2','load_trafo'],
            'suhu_kwh' => ['report_kwh', 'report_suhu'],
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

        if ($category && isset($data[$category])) {
            return $data[$category];
        }

        return response()->json($data);
    }
    public function getReport($id, $type)
{
    $data = [];

    // 🔹 Ambil data report_info
    $report_info = $this->pull_row_table($id, 'report_info');

    if ($report_info) {
        foreach ((array)$report_info as $key => $value) {
            switch ($key) {
                case 'petugasME':
                case 'petugasME2':
                case 'petugasME3':
                case 'petugasME4':
                    $data['report_info'][$key] = $this->idName($value);
                    $data['report_info'][$key.'Phone'] = $this->idNumber($value);
                    break;
                case 'date_time':
                     $data['report_info'][$key] = $value;
                    break;
                default:
                    
                break;
            }
        }
    }

    // 🔹 Ambil data tambahan berdasarkan tipe
    switch (strtolower(trim($type))) {
        case 'suhu & kwh':
        case 'kwh & suhu':
            $tablelist = $this->tableReportList('suhu_kwh'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            break;

        case 'genset1':
        case 'genset2':
            $tablelist = $this->tableReportList('genset'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            break;
         case 'ceklist':
            $tablelist = $this->tableReportList('suhu_kwh'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            $tablelist = $this->tableReportList('property'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            $tablelist = $this->tableReportList('power'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            $tablelist = $this->tableReportList('it_load'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            $tablelist = $this->tableReportList('coling_system'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
            $tablelist = $this->tableReportList('genset'); // ← langsung array
            foreach ($tablelist as $table) {
                $data[$table] = $this->pull_row_latest($table);
            }
            break;

        default:
            $data['message'] = "Kategori '$type' tidak dikenallll";
            break;
    }

    return response()->json([
        'success' => true,
        'data' => $data
    ]);
}


    private function pull_row_table($id, $table)
    {
        $Column = null;
        $columnMap = [
            'report_lvmdp1' => 'id_report_lvmdp1',
            'report_lvmdp2' => 'id_report_lvmdp2',
            'report_kwh' => 'id_report_kwh',
            'report_suhu' => 'id_report_suhu',
            'report_info' => 'no_report',
            'load_trafo' => 'id',
            'dcpdu_2' => 'id',
            'dcpdu_3' => 'id',
            'dcpdu_4' => 'id',
            'dcpdu_1' => 'id',
            'pac1' => 'id',
            'pac2' => 'id',
            'pac3' => 'id',
            'pac4' => 'id',
            'pac5' => 'id',
            'pac6' => 'id',
            'pac7' => 'id',
            'pac8' => 'id',
            'pac9' => 'id',
            'pac10' => 'id',
            'rec1' => 'id',
            'rec2' => 'id',
            'rec3' => 'id',
            'rec4' => 'id',
            'rec5' => 'id',
            'rec6' => 'id',
            'rec7' => 'id',
            'rec8' => 'id',
            'rec9' => 'id',
            'ups1' => 'id',
            'ups2' => 'id',
            'genset1' => 'id',
            'genset2' => 'id',
            'trafof_c' => 'id'
        ];

        if (isset($columnMap[$table])) {
            $Column = $columnMap[$table];
        } else {
            // Optional: kasih default behavior atau error handling
            return response()->json([
                'success' => false,
                'message' => "Tabel '$table' tidak dikenali"
            ], 400);
        }
        // Ambil satu baris berdasarkan ID
        $data = \DB::table($table)
            ->where($Column, $id)
            ->first();

        // Jika tidak ditemukan, kembalikan respon null atau error
        if (!$data) {
            return response()->json([
                'success' => false,
                'message' => 'Data tidak ditemukan'
            ], 404);
        }

        return $data;
    }

    /////
    private function pull_row_latest($table)
{
    // Map antara nama tabel dan kolom primary key-nya
    $columnMap = [
        'report_lvmdp1' => 'id_report_lvmdp1',
        'report_lvmdp2' => 'id_report_lvmdp2',
        'report_kwh' => 'id_report_kwh',
        'report_suhu' => 'id_report_suhu',
        'report_info' => 'no_report',
        'load_trafo' => 'id',
        'dcpdu_1' => 'id',
        'dcpdu_2' => 'id',
        'dcpdu_3' => 'id',
        'dcpdu_4' => 'id',
        'pac1' => 'id',
        'pac2' => 'id',
        'pac3' => 'id',
        'pac4' => 'id',
        'pac5' => 'id',
        'pac6' => 'id',
        'pac7' => 'id',
        'pac8' => 'id',
        'pac9' => 'id',
        'pac10' => 'id',
        'rec1' => 'id',
        'rec2' => 'id',
        'rec3' => 'id',
        'rec4' => 'id',
        'rec5' => 'id',
        'rec6' => 'id',
        'rec7' => 'id',
        'rec8' => 'id',
        'rec9' => 'id',
        'ups1' => 'id',
        'ups2' => 'id',
        'genset1' => 'id',
        'genset2' => 'id',
        'trafof_c' => 'id'
    ];

    // Cek apakah tabel dikenali
    if (!isset($columnMap[$table])) {
        return response()->json([
            'success' => false,
            'message' => "Tabel '$table' tidak dikenali"
        ], 400);
    }

    $column = $columnMap[$table];

    // Ambil 1 baris terakhir berdasarkan kolom primary key (descending)
    $data = \DB::table($table)
        ->orderBy($column, 'desc')
        ->first();

    // Jika tidak ada data
    if (!$data) {
        return response()->json([
            'success' => false,
            'message' => "Data pada tabel '$table' tidak ditemukan"
        ], 404);
    }

    return $data;
}



/////////////////FOR FORM GENERATOR
private function getTableStructure($tableName)
{
    $databaseName = env('DB_DATABASE'); // ambil nama DB dari .env

    $query = "
        SELECT 
            COLUMN_NAME AS Field,
            UPPER(SUBSTRING_INDEX(COLUMN_TYPE, '(', 1)) AS Type
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = ?
          AND TABLE_NAME = ?
          AND COLUMN_KEY <> 'PRI'
        ORDER BY ORDINAL_POSITION;
    ";

    return \DB::select($query, [$databaseName, $tableName]);
}

public function requestTableStructure($table)
{
    $data = [
        'staffform' => ['report_info'],
        'property' => ['trafof_c'],
        'power' => ['report_lvmdp1', 'report_lvmdp2', 'load_trafo'],
        'suhu_kwh' => ['report_kwh', 'report_suhu'],
        'it_load' => [
            'rec1', 'rec2', 'rec3', 'rec4', 'rec5', 'rec6',
            'rec7', 'rec8', 'rec9', 'ups1', 'ups2',
            'dcpdu_1', 'dcpdu_2', 'dcpdu_3', 'dcpdu_4'
        ],
        'coling_system' => [
            'pac1', 'pac2', 'pac3', 'pac4', 'pac5',
            'pac6', 'pac7', 'pac8', 'pac9', 'pac10'
        ],
        'genset1' => ['genset1'],
        'genset2' => ['genset2']
    ];

    // Jika key tidak ditemukan
    if (!array_key_exists($table, $data)) {
        return response()->json([
            'error' => "Kategori tabel '{$table}' tidak ditemukan."
        ], 404);
    }

    // Loop tabel dalam kategori yang diminta
    $columns = [];
    foreach ($data[$table] as $tbl) {
        $columns[$tbl] = $this->getTableStructure($tbl);
    }

    return response()->json($columns);
}



}
