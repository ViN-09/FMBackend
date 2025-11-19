<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class VisitorLog extends Controller
{
    protected $connection = 'mysql';


    public function getAllLogs()
    {
        $logs = DB::connection($this->connection)
            ->table('visitor_log')
            ->select('id', 'visitor_id', 'status', 'keterangan', 'waktu')
            ->whereMonth('waktu', now()->month)
            ->whereYear('waktu', now()->year)
            ->orderBy('id', 'desc')
            ->get();

        // Mapping + ambil info dari tabel visitor (bio)
        $logs = $logs->map(function ($log) {
            $bio = $this->fetchUserBio($log->visitor_id);

            return [
                'id'         => $log->id,
                'visitor_id' => $log->visitor_id,
                'nama'       => $bio['nama'] ?? null,
                'gambar'     => $bio['gambar'] ?? null,
                'status'     => $log->status,
                'keterangan' => $log->keterangan,
                'waktu'      => $log->waktu,
            ];
        });

        return response()->json([
            'status' => 'success',
            'data'   => $logs
        ]);
    }

    public function getLogsByVisitor($id)
    {
        $logs = DB::connection($this->connection)
            ->table('visitor_log')
            ->where('visitor_id', $id)
            ->select('id', 'visitor_id', 'status', 'keterangan', 'waktu')
            ->orderBy('waktu', 'desc')
            ->get();

        return response()->json([
            'status' => 'success',
            'visitor_id' => $id,
            'data' => $logs
        ]);
    }

  
    public function addLog(Request $request)
    {
        $visitorId  = $request->input('visitor_id');
        $status     = $request->input('status');
        $keterangan = $request->input('keterangan');

        DB::connection($this->connection)
            ->table('visitor_log')
            ->insert([
                'visitor_id' => $visitorId,
                'status'     => $status,
                'keterangan' => $keterangan,
                'waktu'      => Carbon::now('Asia/Makassar'),
            ]);

        return response()->json([
            'status'  => 'success',
            'message' => 'Visitor log berhasil disimpan.'
        ]);
    }

  
    private function fetchUserBio($visitorId)
    {
        $bio = DB::connection($this->connection)
            ->table('visitors')
            ->where('id', $visitorId)
            ->select('name', 'company') 
            ->first();

        if (!$bio) {
            return null;
        }

        $firstName = explode(' ', trim($bio->name))[0];

        return [
            'nama'   => $firstName,
            'gambar' => null 
        ];
    }
}
