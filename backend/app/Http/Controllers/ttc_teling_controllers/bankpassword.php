<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;
use Carbon\Carbon;

Carbon::setLocale('id');

class bankpassword extends Controller
{
    protected $connection = 'mysql';

    /**
     * Catat aktivitas user ke tabel user_activity
     */
    private function logActivity($username, $activity)
    {
        DB::table('user_activity')->insert([
            'username' => $username ?? 'guest',
            'activity' => $activity,
            'time'     => Carbon::now(),
        ]);
    }

    /** Tes koneksi */
    public function hello()
    {
        return response()->json(['message' => 'Hello from Laravel!']);
    }

    /** CREATE - Simpan data baru */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'peruntukan' => 'required|string|max:255',
            'username'   => 'required|string|max:255',
            'password'   => 'required|string|max:255',
            'tipe'       => 'nullable|string|max:100',
            'keterangan' => 'nullable|string',
            'user_id'    => 'nullable|string|max:100',
        ]);

        $id = DB::table('bank_password')->insertGetId([
            'peruntukan' => $validated['peruntukan'],
            'username'   => $validated['username'],
            'password'   => Crypt::encryptString($validated['password']),
            'tipe'       => $validated['tipe'] ?? null,
            'keterangan' => $validated['keterangan'] ?? null,
        ]);

        // pakai kolom "username" (bukan id)
        $this->logActivity(
            $validated['user_id'] ?? 'guest',
            "Menambahkan password untuk " . $validated['peruntukan']
        );

        return response()->json([
            'status' => 'success',
            'pesan'  => 'Data berhasil disimpan',
            'id'     => $id,
        ]);
    }

    /** READ ALL - dengan decrypt password */
    public function index()
    {
        $rows = DB::table('bank_password')->get()->map(function ($row) {
            try {
                $row->password = Crypt::decryptString($row->password);
            } catch (\Exception $e) {
                $row->password = '[ENCRYPT ERROR]';
            }
            return $row;
        });

        return response()->json([
            'status' => 'success',
            'data'   => $rows,
        ]);
    }

    /** READ ONE */
    public function show($id)
    {
        $row = DB::table('bank_password')->find($id);
        if (!$row) {
            return response()->json(['status' => 'error', 'pesan' => 'Data tidak ditemukan'], 404);
        }

        try {
            $row->password = Crypt::decryptString($row->password);
        } catch (\Exception $e) {
            $row->password = '[ENCRYPT ERROR]';
        }

        return response()->json(['status' => 'success', 'data' => $row]);
    }

    /** LIST - tanpa password */
    public function list()
    {
        $rows = DB::table('bank_password')
            ->select('id', 'peruntukan', 'username', 'tipe', 'keterangan')
            ->orderBy('id', 'desc')
            ->get();

        return response()->json(['status' => 'success', 'data' => $rows]);
    }

    /** DECRYPT satu password */
    public function decryptPassword($id)
    {
        $row = DB::table('bank_password')->find($id);
        if (!$row) {
            return response()->json(['status' => 'error', 'pesan' => 'Data tidak ditemukan'], 404);
        }

        try {
            $password = Crypt::decryptString($row->password);
            return response()->json([
                'status'     => 'success',
                'id'         => $row->id,
                'peruntukan' => $row->peruntukan,
                'username'   => $row->username,
                'password'   => $password,
            ]);
        } catch (\Exception $e) {
            return response()->json(['status' => 'error', 'pesan' => 'Gagal decrypt password'], 500);
        }
    }

    /** UPDATE data */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'peruntukan' => 'required|string|max:255',
            'username'   => 'required|string|max:255',
            'password'   => 'nullable|string|max:255',
            'tipe'       => 'nullable|string|max:100',
            'keterangan' => 'nullable|string',
            'user_id'    => 'nullable|string|max:100',
        ]);

        $row = DB::table('bank_password')->find($id);
        if (!$row) {
            return response()->json(['status' => 'error', 'pesan' => 'Data tidak ditemukan'], 404);
        }

        $updateData = [
            'peruntukan' => $validated['peruntukan'],
            'username'   => $validated['username'],
            'tipe'       => $validated['tipe'] ?? $row->tipe,
            'keterangan' => $validated['keterangan'] ?? $row->keterangan,
        ];

        if (!empty($validated['password'])) {
            $updateData['password'] = Crypt::encryptString($validated['password']);
        }

        DB::table('bank_password')->where('id', $id)->update($updateData);

        $this->logActivity(
            $validated['user_id'] ?? 'guest',
            "Mengupdate password untuk " . $validated['peruntukan']
        );

        return response()->json([
            'status' => 'success',
            'pesan'  => 'Data berhasil diperbarui',
            'data'   => DB::table('bank_password')->find($id),
        ]);
    }

    /** DELETE data */
    public function destroy(Request $request, $id)
    {
        $row = DB::table('bank_password')->find($id);
        if (!$row) {
            return response()->json(['status' => 'error', 'pesan' => 'Data tidak ditemukan'], 404);
        }

        DB::table('bank_password')->where('id', $id)->delete();

        $this->logActivity(
            $request->user_id ?? 'guest',
            "Menghapus Password " . $row->peruntukan
        );

        return response()->json(['status' => 'success', 'pesan' => 'Data berhasil dihapus']);
    }
}