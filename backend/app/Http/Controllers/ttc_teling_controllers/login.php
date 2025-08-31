<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

Carbon::setLocale('id');

class login extends Controller
{
    // Pakai koneksi database mysql2
    protected $connection = 'mysql';

    // public function cekLogin(Request $request)
    // {
    //     // Validasi input
    //     $request->validate([
    //         'username' => 'required|string',
    //         'password' => 'required|string'
    //     ]);

    //     $username = $request->input('username');
    //     $password = $request->input('password');

    //     // Ambil user dari database
    //     $user = DB::connection($this->connection)
    //         ->table('users') // ganti dengan nama tabel user-mu
    //         ->where('username', $username)
    //         ->first();

    //     if (!$user) {
    //         return response()->json([
    //             'status' => 'error',
    //             'message' => 'User tidak ditemukan'
    //         ], 404);
    //     }

    //     // Cek password
    //     if (!Hash::check($password, $user->password)) {
    //         return response()->json([
    //             'status' => 'error',
    //             'message' => 'Password salah'
    //         ], 401);
    //     }

    //     // Login sukses
    //     // Bisa tambahkan session / token JWT jika mau
    //     return response()->json([
    //         'status' => 'success',
    //         'message' => 'Login berhasil',
    //         'data' => [
    //             'id' => $user->id,
    //             'username' => $user->username,
    //             // Tambahkan field lain sesuai kebutuhan
    //         ]
    //     ]);
    // }

    public function cekLogin(Request $request)
{
    $request->validate([
        'username' => 'required|string',
        'password' => 'required|string'
    ]); 

    $username = $request->input('username');
    $password = $request->input('password');

    // Hardcode login
    if ($username === 'vin' && $password === '123') {
        return response()->json([
            'status' => 'success',
            'message' => 'Login berhasil',
            'data' => [
                'username' => $username
            ]
        ]);
    } else {
        return response()->json([
            'status' => 'error',
            'message' => 'Username atau password salah'
        ], 401);
    }
}

}
