<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;

class data_potensi2 extends Controller
{
    public function hello()
    {
        return response()->json(['message' => 'Hello from Laravel!']);
    }

    /**
     * Ambil semua tabel dp_ dan datanya
     */
    public function fullDapot()
    {
        $datapotensi = [];
        $data_potesi_list = $this->listDatapotensi();

        foreach ($data_potesi_list as $rowlist => $tablelist) {
            foreach ($tablelist as $kolom => $value) {
                if ($kolom == 'nama_tabel') {
                    $datapotensi[$value] = $this->dapot($value);
                }
            }
        }

        return response()->json([
            'message' => 'success',
            'data_potesi_list' => $data_potesi_list,
            'datapotensi' => $datapotensi
        ]);
    }

    /**
     * Daftar semua tabel dp_*
     */
    private function listDatapotensi()
    {
        $results = DB::select("
            SELECT 
                TABLE_NAME AS nama_tabel,
                TABLE_ROWS AS lenght
            FROM information_schema.TABLES
            WHERE TABLE_SCHEMA = 'db_ttc_teling'
              AND LEFT(TABLE_NAME, 3) = 'dp_'
            ORDER BY TABLE_ROWS DESC
        ");

        return $results;
    }

    /**
     * Ambil semua data dari satu tabel
     */
    private function dapot($nama_table)
    {
        if (!Schema::hasTable($nama_table)) {
            return [];
        }

        $results = DB::table($nama_table)->get();
        return $results;
    }

    /**
     * CRUD endpoint umum untuk semua tabel dp_*
     * Body JSON: { table: 'dp_xxx', mode: 'add'|'edit'|'delete', id: '...', data: {...}, user_id: '...' }
     */
    public function crudDapot(Request $request)
    {
        $table = $request->input('table');
        $mode = $request->input('mode');
        $id = $request->input('id');
        $data = $request->input('data');
        $user_id = $request->input('user_id');

        if (!$table || !$mode) {
            return response()->json(['error' => 'table dan mode wajib diisi'], 400);
        }

        if (!Schema::hasTable($table)) {
            return response()->json(['error' => "Tabel $table tidak ditemukan"], 404);
        }

        try {
            switch ($mode) {
                case 'add':
                    // Hapus id dari data jika ada, karena auto-increment
                    unset($data['id']);
                    
                    // Tambah data baru
                    $newId = DB::table($table)->insertGetId($data);
                    
                    // Log aktivitas
                    $this->logActivity($user_id, "Menambah data di tabel $table dengan ID " . $newId);
                    return response()->json([
                        'message' => 'Data berhasil ditambahkan',
                        'new_id' => $newId // Kirim kembali ID yang di-generate database
                    ]);

                case 'edit':
                    if (!$id) {
                        return response()->json(['error' => 'ID wajib untuk edit'], 400);
                    }
                    // Untuk edit, hapus id dari data jika ada (tidak boleh edit ID)
                    unset($data['id']);
                    
                    DB::table($table)->where('id', $id)->update($data);
                    // Log aktivitas
                    $this->logActivity($user_id, "Mengedit data di tabel $table dengan ID $id");
                    return response()->json(['message' => 'Data berhasil diperbarui']);

                case 'delete':
                    if (!$id) {
                        return response()->json(['error' => 'ID wajib untuk delete'], 400);
                    }
                    DB::table($table)->where('id', $id)->delete();
                    // Log aktivitas
                    $this->logActivity($user_id, "Menghapus data di tabel $table dengan ID $id");
                    return response()->json(['message' => 'Data berhasil dihapus']);

                default:
                    return response()->json(['error' => 'Mode tidak dikenali'], 400);
            }
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Terjadi kesalahan',
                'details' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Log aktivitas user
     */
    private function logActivity($username, $activity)
    {
        DB::table('user_activity')->insert([
            'username' => $username ?? 'guest',
            'activity' => $activity,
            'time'     => Carbon::now(),
        ]);
    }
}