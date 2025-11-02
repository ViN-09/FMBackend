<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

Carbon::setLocale('id');

class Checklist2 extends Controller
{
    protected $connection = 'mysql';

    /**
     * Ambil 200 data terakhir dari tabel report_info
     */
    private function getDialyActivityList()
    {
        return DB::connection($this->connection)->table('report_info')->select('no_report', 'petugasME', 'petugasME2', 'petugasME3', 'petugasME4', 'jenis_report', 'date_time', 'status')->whereIn('jenis_report', ['Ceklist', 'KWH & Suhu', 'Genset1', 'Genset2'])->whereMonth('date_time', now()->month)->whereYear('date_time', now()->year)->orderBy('date_time', 'desc')->limit(200)->get();
    }

    private function getUserInfo($id, $field)
    {
        $user = DB::connection($this->connection)
            ->table('user_bio')
            ->select($field)
            ->where('id', $id)
            ->first();

        return $user ? $user->$field : null;
    }

    /**
     * Endpoint publik untuk ambil data via API
     */
    public function showDialyActivity()
    {
        $data = $this->getDialyActivityList();
        $dialyActivityList = [];

        foreach ($data as $index => $list) {
            $dialyActivityList[] = [
                'no_report' => $list->no_report,
                'Petugas1' => $this->getUserInfo($list->petugasME, 'Nama'),
                'Petugas2' => $this->getUserInfo($list->petugasME2, 'Nama'),
                'Petugas3' => $this->getUserInfo($list->petugasME3, 'Nama'),
                'Petugas4' => $this->getUserInfo($list->petugasME4, 'Nama'),
                'Report' => $list->jenis_report,
                'Date' => $list->date_time,
            ];
        }

        return response()->json(['DialyActivityList' => $dialyActivityList]);
    }

    /////////////////CREATING SINGLE REPORT
    private function tableReportList($category = null)
    {
        $data = [
            'staffform' => ['report_info'],
            'property' => ['trafof_c'],
            'power' => ['report_lvmdp1', 'report_lvmdp2', 'load_trafo'],
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

        return $category ? ($data[$category] ?? []) : $data;
    }

    public function getReport($id, $type)
    {
        $data['genset']['genset1'] = NULL;
        $data['genset']['genset2'] = NULL;

        $type = strtolower(trim(urldecode($type)));

        // Samakan variasi nama tipe (contoh: "kwh & suhu", "suhu & kwh", "kwh_suhu")
        if (str_contains($type, 'kwh') && str_contains($type, 'suhu')) {
            $type = 'kwh & suhu';
        }

        // Ambil data report_info
        $report_info = $this->pull_row_table($id, 'report_info');
        if ($report_info) {
            $data['report_info'] = $this->processReportInfo($report_info);
        }

        // Ambil data tambahan berdasarkan tipe
        $tableConfig = $this->getTableConfigByType($type);

        foreach ($tableConfig as $tableCategory) {
            $tables = $this->tableReportList($tableCategory);

            // Fungsi helper hitung liter dan format float 1 desimal
            $hitungLiter = function ($row, $genset) {
                $Tangki_bulanan = $row->tanki_bulanan ?? 0;
                $Tangki_harian = $row->tangki_harian ?? 0;

                if ($genset === 'genset1') {
                    $row->liter_bulanan = round((((90 ** 2) * acos((90 - $Tangki_bulanan) / 90)
                        - ((90 - $Tangki_bulanan) * sqrt((2 * 90 * $Tangki_bulanan) - ($Tangki_bulanan ** 2)))) * 400) / 1000, 1);
                    $row->liter_harian = round((((50 ** 2) * acos((50 - $Tangki_harian) / 50)
                        - ((50 - $Tangki_harian) * sqrt((2 * 50 * $Tangki_harian) - ($Tangki_harian ** 2)))) * 200) / 1000, 1);
                } else { // genset2
                    $row->liter_bulanan = round((((80 ** 2) * acos((80 - $Tangki_bulanan) / 80)
                        - ((80 - $Tangki_bulanan) * sqrt((2 * 80 * $Tangki_bulanan) - ($Tangki_bulanan ** 2)))) * 500) / 1000, 1);
                    $row->liter_harian = round((((42.5 ** 2) * acos((42.5 - $Tangki_harian) / 42.5)
                        - ((42.5 - $Tangki_harian) * sqrt((2 * 42.5 * $Tangki_harian) - ($Tangki_harian ** 2)))) * 180) / 1000, 1);
                }

                return $row;
            };

            // Kasus khusus: ceklist + genset
            if ($tableCategory === 'genset' && $type === 'ceklist') {
                $data['genset'] = [
                    'genset1' => $hitungLiter($this->pull_row_latest('genset1'), 'genset1'),
                    'genset2' => $hitungLiter($this->pull_row_latest('genset2'), 'genset2')
                ];
                continue; // skip loop tabel genset
            }

            // Kasus khusus: hanya genset1 atau genset2
            if ($tableCategory === 'genset' && in_array($type, ['genset1', 'genset2'])) {
                $data['genset'] = [
                    'genset1' => null,
                    'genset2' => null
                ];

                foreach ($tables as $table) {
                    if ($type === 'genset1' && str_contains($table, 'genset1')) {
                        $data['genset']['genset1'] = $hitungLiter($this->pull_row_table($id, $table), 'genset1');
                    }
                    if ($type === 'genset2' && str_contains($table, 'genset2')) {
                        $data['genset']['genset2'] = $hitungLiter($this->pull_row_table($id, $table), 'genset2');
                    }
                }

                continue; // skip loop tabel genset
            }

            // Loop tabel normal
            foreach ($tables as $table) {
                $data[$table] = $this->pull_row_table($id, $table);
            }
        }







        if (empty($tableConfig)) {
            return response()->json([
                'success' => false,
                'message' => "Kategori '$type' tidak dikenali"
            ], 400);
        }

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }

    private function getTableConfigByType($type)
    {
        $config = [
            'suhu & kwh' => ['suhu_kwh'],
            'kwh & suhu' => ['suhu_kwh'],
            'genset1' => ['genset'],
            'genset2' => ['genset'],
            'ceklist' => ['suhu_kwh', 'property', 'power', 'it_load', 'coling_system', 'genset']
        ];

        return $config[$type] ?? [];
    }

    private function processReportInfo($reportInfo)
    {
        $processed = [];
        $petugasFields = ['petugasME', 'petugasME2', 'petugasME3', 'petugasME4'];

        foreach ((array) $reportInfo as $key => $value) {
            if (in_array($key, $petugasFields)) {
                $processed[$key] = $this->getUserInfo($value, 'Nama');
                $processed[$key . 'Phone'] = $this->getUserInfo($value, 'noTELP');
            } elseif ($key === 'date_time') {
                $processed[$key] = $value;
            }
        }

        return $processed;
    }

    private function pull_row_table($id, $table)
    {
        $columnMap = [
            'report_lvmdp1' => 'id_report_lvmdp1',
            'report_lvmdp2' => 'id_report_lvmdp2',
            'report_kwh' => 'id_report_kwh',
            'report_suhu' => 'id_report_suhu',
            'report_info' => 'no_report',
            // Default primary key untuk tabel lainnya
            'default' => 'id'
        ];

        $column = $columnMap[$table] ?? $columnMap['default'];

        $data = DB::connection($this->connection)
            ->table($table)
            ->where($column, $id)
            ->first();

        if (!$data) {
            return null;
        }

        return $data;
    }

    private function pull_row_latest($table)
    {
        $columnMap = [
            'report_lvmdp1' => 'id_report_lvmdp1',
            'report_lvmdp2' => 'id_report_lvmdp2',
            'report_kwh' => 'id_report_kwh',
            'report_suhu' => 'id_report_suhu',
            'report_info' => 'no_report',
            'default' => 'id'
        ];

        $column = $columnMap[$table] ?? $columnMap['default'];

        $data = DB::connection($this->connection)
            ->table($table)
            ->orderBy($column, 'desc')
            ->first();

        return $data;
    }

    public function stafflist($jabatan)
    {
        $data = DB::connection($this->connection)
            ->table('user_bio')
            ->select('id', 'Nama')
            ->where('jabatan', $jabatan)
            ->get()
            ->prepend(['id' => '-', 'Nama' => '-']);

        return response()->json($data);
    }

    /////////////////FOR FORM GENERATOR
    private function getTableStructure($tableName)
    {
        $databaseName = env('DB_DATABASE');

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

        return DB::select($query, [$databaseName, $tableName]);
    }

    public function requestTableStructure($table)
    {
        $categories = [
            'staffform' => ['report_info'],
            'property' => ['trafof_c'],
            'power' => ['report_lvmdp1', 'report_lvmdp2', 'load_trafo'],
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
            'genset1' => ['genset1'],
            'genset2' => ['genset2']
        ];

        if (!array_key_exists($table, $categories)) {
            return response()->json([
                'error' => "Kategori tabel '{$table}' tidak ditemukan."
            ], 404);
        }

        $columns = [];

        foreach ($categories[$table] as $tbl) {
            $structure = $this->getTableStructure($tbl);
            $latestRow = $this->pull_row_latest($tbl);

            $columns[$tbl] = array_map(function ($col) use ($latestRow) {
                $field = $col->Field;
                $col->latestValue = $latestRow->$field ?? null;
                return $col;
            }, $structure);
        }

        return response()->json($columns);
    }

    public function cereateReportID(Request $request)
    {
        $data = $request->all();

        // Insert semua data yang dikirim
        $this->insertToDB($data);

        $latestRow = null;
        $no_report = null;

        // Ambil data terakhir dari tiap tabel
        foreach ($data as $table => $kolom) {
            $latestRow = $this->pull_row_latest($table);
            // Jika tabel punya kolom no_report, ambil nilainya
            if (isset($latestRow->no_report)) {
                $no_report = $latestRow->no_report;
                $report_type = $latestRow->jenis_report;
            }
        }

        // Buat respon untuk debug
        $debugInfo = [
            'method' => $request->method(),
            'content_type' => $request->header('Content-Type'),
            'no_report' => $no_report,
            'report_type' => $report_type,
        ];

        return response()->json($debugInfo);
    }

    public function createReport(Request $request)
    {

        $userInfoHeader = $request->header('X-User-Info');
        $userInfo = json_decode($userInfoHeader, true);
        $id = $userInfo['id'];
        // Ambil semua data JSON dari body
        $data = $request->all();

        // Pisahkan dua field utama
        $no_report = $data['no_report'] ?? null;
        $report_type = $data['report_type'] ?? null;

        // Hapus dua field itu dari array utama
        unset($data['no_report'], $data['report_type'], $data['user_report']);

        // Mapping nama kolom ID
        $columnMap = [
            'report_lvmdp1' => 'id_report_lvmdp1',
            'report_lvmdp2' => 'id_report_lvmdp2',
            'report_kwh' => 'id_report_kwh',
            'report_suhu' => 'id_report_suhu',
            'report_info' => 'no_report',
            'default' => 'id'
        ];

        // Tambahkan ID di masing-masing sub-array
        foreach ($data as $key => &$value) {
            // Ambil nama kolom ID sesuai key
            $columnName = $columnMap[$key] ?? $columnMap['default'];
            // Sisipkan kolom ID di awal array
            $value = array_merge([$columnName => $no_report], $value);

        }

        foreach ($data as $table => $fields) {

            $this->insertToDBData([$table => $fields]);
        }

        // Siapkan array hasil
        $response = [
            'status' => 'success',
            'pesan' => 'Data berhasil diterima',
            'no_report' => $no_report,
            'report_type' => $report_type,
            'data' => $data,
            'debug_info' => [
                'received_at' => now()->toDateTimeString(),
                'data_count' => is_array($data) ? count($data) : 'N/A',
                'from_header' => $userInfo ?? null
            ]
        ];

        // Ubah ke JSON string
        $json = json_encode($response, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
        $this->addActivity($id, 'Submit ' . $report_type);
        $this->fixedSubmit($no_report);
        // Return murni JSON (tanpa view)
        return response($json, 200)
            ->header('Content-Type', 'application/json');
    }






    private function insertToDB($data)
    {
        try {
            foreach ($data as $table => $fields) {
                if (!is_array($fields) || empty($fields))
                    continue;

                $filteredFields = array_filter($fields, function ($v, $k) {
                    return !is_null($v) && $k !== '';
                }, ARRAY_FILTER_USE_BOTH);

                if (empty($filteredFields))
                    continue;

                DB::connection($this->connection)
                    ->table($table)
                    ->insert($filteredFields);
            }
        } catch (\Exception $e) {
            \Log::error('Gagal insert data: ' . $e->getMessage());
            throw $e;
        }
    }
    private function insertToDBData($data)
    {
        try {
            foreach ($data as $table => $fields) {
                if (!is_array($fields) || empty($fields))
                    continue;

                $filteredFields = array_filter($fields, function ($v, $k) {
                    return !is_null($v) && $k !== '';
                }, ARRAY_FILTER_USE_BOTH);

                if (empty($filteredFields))
                    continue;

                // Ambil kolom ID report (biasanya kolom pertama)
                $firstKey = array_key_first($filteredFields);

                DB::connection($this->connection)
                    ->table($table)
                    ->updateOrInsert(
                        [$firstKey => $filteredFields[$firstKey]],
                        $filteredFields
                    );
            }
        } catch (\Exception $e) {
            \Log::error('Gagal insert/update data: ' . $e->getMessage());
            throw $e;
        }
    }

    private function fixedSubmit($no_report)
    {
        return \DB::table('report_info')
            ->where('no_report', $no_report)
            ->update(['status' => 1]);
    }

    protected function addActivity($username, $activity)
    {
        try {
            DB::connection($this->connection)
                ->table('user_activity')
                ->insert([
                    'username' => $username,
                    'activity' => $activity,
                ]);
        } catch (\Exception $e) {
            \Log::error('Gagal insert user_activity: ' . $e->getMessage());
        }
    }

}


