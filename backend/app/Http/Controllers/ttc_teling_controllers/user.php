<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

Carbon::setLocale('id');

class user extends Controller
{
    protected $connection = 'mysql';

    // ✔ Ambil semua data user_bio
    public function index()
    {
        $data = DB::connection($this->connection)
            ->table('user_bio')
            ->orderBy('id', 'DESC')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }

    // ✔ Ambil user berdasarkan ID
    public function show($id)
    {
        $data = DB::connection($this->connection)
            ->table('user_bio')
            ->where('id', $id)
            ->first();

        if (!$data) {
            return response()->json([
                'success' => false,
                'message' => 'User tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }

    // ✔ Tambah user baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'Nama'     => 'required|string',
            'jabatan'  => 'required|string',
            'tl'       => 'required|string',
            'Alamat'   => 'required|string',
            'noTELP'   => 'required|string',
            'email'    => 'required|email',
            'gambar'   => 'nullable|string',
            'idx'      => 'nullable|string'
        ]);

        $id = DB::connection($this->connection)
            ->table('user_bio')
            ->insertGetId($validated);

        return response()->json([
            'success' => true,
            'message' => 'User berhasil ditambahkan',
            'id' => $id
        ]);
    }

    // ✔ Update user berdasarkan ID
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'Nama'     => 'nullable|string',
            'jabatan'  => 'nullable|string',
            'tl'       => 'nullable|string',
            'Alamat'   => 'nullable|string',
            'noTELP'   => 'nullable|string',
            'email'    => 'nullable|email',
            'gambar'   => 'nullable|string',
            'idx'      => 'nullable|string'
        ]);

        $affected = DB::connection($this->connection)
            ->table('user_bio')
            ->where('id', $id)
            ->update($validated);

        if (!$affected) {
            return response()->json([
                'success' => false,
                'message' => 'User tidak ditemukan atau tidak ada perubahan'
            ]);
        }

        return response()->json([
            'success' => true,
            'message' => 'User berhasil diperbarui'
        ]);
    }

    // ✔ Hapus user berdasarkan ID
    public function destroy($id)
    {
        $deleted = DB::connection($this->connection)
            ->table('user_bio')
            ->where('id', $id)
            ->delete();

        if (!$deleted) {
            return response()->json([
                'success' => false,
                'message' => 'User tidak ditemukan'
            ]);
        }

        return response()->json([
            'success' => true,
            'message' => 'User berhasil dihapus'
        ]);
    }
}
