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

    public function fullDapot()
{
    $datapotensi=[];
    $data_potesi_list = $this->listDatapotensi(); // panggil fungsi private
    foreach($data_potesi_list as $rowlist => $tablelist){
        // $datapotensi[$rowlist]= $tablelist;
        foreach($tablelist as $kolom => $value){
            if($kolom == 'nama_tabel'){
                $datapotensi[$value] = $this->dapot($value);
            }
        }
    }

    return response()->json([
        'message' => 'success',
        'data_potesi_list' => $data_potesi_list,
        'datapotensi'=> $datapotensi
    
    ]);
}

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
    private function dapot($nama_table)
{
    $results = DB::select("
        SELECT * FROM `$nama_table`
    ");

    return $results;
}




  
}
