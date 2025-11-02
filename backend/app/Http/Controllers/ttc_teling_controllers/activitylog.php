<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ActivityLog extends Controller
{
    protected $connection = 'mysql';

    /**
     * Ambil semua data activity log + nama & gambar
     */
    public function getAllLogs()
{
    $logs = DB::connection($this->connection)
        ->table('user_activity')
        ->select('id', 'username', 'activity', 'time')
        ->whereMonth('time', now()->month)
        ->whereYear('time', now()->year)
        ->orderBy('id', 'desc')
        ->get();

    // mapping data logs + info bio
    $logs = $logs->map(function ($log) {
        // join pakai username ↔ user_bio.id
        $bio = $this->fetchUserBio($log->username);

        return [
            'id'       => $log->id,
            'username' => $log->username,
            'activity' => $log->activity,
            'time'     => $log->time,
            'nama'     => $bio['nama'] ?? null,
            'gambar'   => $bio['gambar'] ?? null,
        ];
    });

    return response()->json([
        'status' => 'success',
        'data'   => $logs
    ]);
}


    /**
     * Ambil log berdasarkan username
     */
    public function getLogsByUser($username)
    {
        $logs = DB::connection($this->connection)
            ->table('user_activity')
            ->where('username', $username)
            ->select('id', 'username', 'activity', 'time')
            ->orderBy('time', 'desc')
            ->get();

        return response()->json([
            'status'   => 'success',
            'username' => $username,
            'data'     => $logs
        ]);
    }

    /**
     * Ambil Nama (kata pertama) dan gambar user_bio berdasarkan username
     * Hanya untuk internal
     */
    private function fetchUserBio($username)
    {
        $bio = DB::connection($this->connection)
            ->table('user_bio')
            ->where('id', $username) // join pake user_activity.username ↔ user_bio.id
            ->select('Nama', 'gambar')
            ->first();

        if (!$bio) {
            return null;
        }

        // Ambil kata pertama dari Nama
        $firstName = explode(' ', trim($bio->Nama))[0];

        return [
            'nama'   => $firstName,
            'gambar' => $bio->gambar,
        ];
    }
}
