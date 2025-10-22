<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

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
            ->whereIn('jenis_report', ['Ceklist', 'KWH & Suhu'])
            ->orderBy('date_time', 'desc')
            ->limit(20)
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
}
