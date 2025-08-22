<?php

namespace App\Http\Controllers\ttc_paniki_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class monitoring extends Controller
{
    protected $connection = 'mysql2';
    public function getLastCachePue()
    {
        try {
            if (!Schema::connection($this->connection)->hasTable('cache_pue')) {
                return response()->json(['error' => 'Table cache_pue not found'], 404);
            }

            $data = DB::connection($this->connection)
                ->table('cache_pue')
                ->orderBy('id', 'desc')
                ->first();

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function getAllPue()
    {
        try {
            if (!Schema::connection($this->connection)->hasTable('pue')) {
                return response()->json(['error' => 'Table pue not found'], 404);
            }

            $data = DB::connection($this->connection)
                ->table('pue')
                ->get();

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
