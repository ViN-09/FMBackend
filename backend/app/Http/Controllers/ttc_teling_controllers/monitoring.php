<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Monitoring extends Controller
{
    // Private function generate PUE
    private function generatePUE(): float
    {
        return mt_rand(100, 300) / 100;
    }

    // Private function generate daily PUE
    private function generateDailyPUE(): array
    {
        $pueValues = [];
        for ($i = 0; $i <= 24; $i++) {
            $hour = str_pad($i, 2, '0', STR_PAD_LEFT) . ":00";
            $pueValues[$hour] = round(rand(10, 25) / 10, 1);
        }
        return $pueValues;
    }

    // Private function generate load
    private function generateLoad(): array
    {
        return [
            'PLN' => mt_rand(10, 30) / 10,
            'Facility' => mt_rand(10, 30) / 10,
            'IT' => mt_rand(10, 30) / 10,
        ];
    }

    // Endpoint: single PUE
    public function index()
    {
        return response()->json([
            'status' => 'success',
            'pue' => $this->generatePUE()
        ]);
    }

    // Endpoint: daily PUE
    public function dialyPUE()
    {
        return response()->json([
            'status' => 'success',
            'value' => $this->generateDailyPUE()
        ]);
    }

    // Endpoint: load
    public function Load()
    {
        return response()->json([
            'status' => 'success',
            'load' => $this->generateLoad()
        ]);
    }

     private function generateDailyLoad(): array
    {
        $dailyLoad = [];
        for ($i = 0; $i <= 24; $i++) {
            $hour = str_pad($i, 2, '0', STR_PAD_LEFT) . ":00";
            $dailyLoad[$hour] = $this->generateLoad();
        }
        return $dailyLoad;
    }

    public function suhu()
{
    // Daftar ruangan
    $rooms = ['Trafo', 'Genset', 'Battery', 'Transmissi', 'RAN', 'Core', 'CRoom'];

    $SuhuTemp = [];

    foreach ($rooms as $room) {
        // Generate random float 1.0 - 5.0 untuk suhu & humidity
        $SuhuTemp[$room] = [
            'Suhu' => round(mt_rand(100, 500) / 100, 1),       // 1.0 - 5.0
            'Humidity' => round(mt_rand(100, 500) / 100, 1),   // 1.0 - 5.0
        ];
    }

    return $SuhuTemp;
}


    // Endpoint agregator: semua data sekaligus
    public function dataMonitoring()
    {
        return response()->json([
            'status' => 'success',
            'pue' => $this->generatePUE(),
            'dialyPUE' => $this->generateDailyPUE(),
            'load' => $this->generateLoad(),
            'dialyLOAD' => $this->generateDailyLoad(),
            'suhutemp' => $this->suhu()
        ]);
    }
}
