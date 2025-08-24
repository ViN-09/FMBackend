<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

Carbon::setLocale('id');

class reciver extends Controller
{
    protected $connection = 'mysql';

    public function receiveRawJson(Request $request)
    {
        $json = $request->getContent();
        $data = json_decode($json, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            return response()->json([
                'status' => 'error',
                'message' => 'JSON tidak valid',
                'error' => json_last_error_msg()
            ], 400);
        }

        try {
            // Gunakan connection khusus
            \DB::connection($this->connection)
                ->table('cache_data_pue')
                ->insert($data); // insert langsung, key JSON = kolom, value = value

            return response()->json([
                'status' => 'success',
                'message' => 'Data berhasil disimpan',
                'inserted_data' => $data
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }

    public function avgDPM(Request $request)
    {
        // 1. Ambil semua kolom numerik dari tabel cache_data_pue
        $columns = DB::connection($this->connection)
            ->table('information_schema.columns')
            ->select('COLUMN_NAME')
            ->where('table_schema', 'db_ttc_teling') // ganti sesuai DB
            ->where('table_name', 'cache_data_pue')
            ->whereIn('DATA_TYPE', ['int', 'decimal', 'float', 'double'])
            ->pluck('COLUMN_NAME')
            ->toArray();

        if (empty($columns)) {
            return response()->json(['error' => 'No numeric columns found']);
        }

        // 2. Buat query dinamis AVG
        $avgColumns = collect($columns)->map(fn($col) => "AVG(`$col`) AS $col")->implode(', ');

        $query = "SELECT $avgColumns FROM cache_data_pue";

        // 3. Jalankan query
        $result = DB::connection($this->connection)->select($query);

        $row = $result[0] ?? null;
        if ($row) {
            $row = (array) $row;   // convert object -> array
            $this->pushDPM($row);
        }
        return response()->json($row);
    }

    public function pushDPM($data)
    {
        try {
            // Tambahkan timestamp WITA
            $data['date'] = $this->clock(); // pastikan clock() return string

            // Insert ke tabel data_pue
            DB::connection($this->connection)
                ->table('data_pue')
                ->insert($data);

            // Jika insert berhasil, kosongkan tabel cache_data_pue
            $this->removeCacheData('cache_data_pue');

            return true;
        } catch (\Exception $e) {
            // Tangani error
            \Log::error('pushDPM error: ' . $e->getMessage());
            return false;
        }
    }



    public function clock()
    {
        // Set timezone WITA (UTC+8)
        $now = Carbon::now('Asia/Makassar');

        // Format tanggal & waktu: yyyy-mm-dd hh:mm:ss
        $formatted = $now->format('Y-m-d H:i:s');

        return $formatted;
    }

    public function removeCacheData($tableName)
    {
        try {
            // Validasi supaya user tidak bisa sembarangan menghapus tabel sistem
            $allowedTables = ['cache_data_pue', 'per_minute_table']; // daftar tabel yang diizinkan
            if (!in_array($tableName, $allowedTables)) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Tabel tidak diizinkan untuk dihapus'
                ], 400);
            }

            DB::connection($this->connection)
                ->table($tableName)
                ->truncate(); // hapus semua data dan reset auto increment

            return response()->json([
                'status' => 'success',
                'message' => "Tabel $tableName berhasil dikosongkan"
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }



    public function hello()
    {
        return response()->json(['message' => 'Hello from Reciver!']);
    }
}
