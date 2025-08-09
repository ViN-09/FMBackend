<?php

namespace App\Http\Controllers\ttc_paniki_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;

class data_potensi extends Controller
{
    protected $connection = 'mysql2';  // koneksi database kedua

    public function hello()
    {
        return response()->json(['message' => 'Hello from Laravel!']);
    }

    public function generateDatapotensi($table)
    {
        try {
            // pakai koneksi mysql2
            if (!Schema::connection($this->connection)->hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $data = DB::connection($this->connection)->table($table)->get();
            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function generateColumns($table)
    {
        try {
            if (!Schema::connection($this->connection)->hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $columns = DB::connection($this->connection)->table('information_schema.columns')
                ->select('COLUMN_NAME', 'DATA_TYPE')
                ->where('table_name', $table)
                ->where('table_schema', DB::connection($this->connection)->getDatabaseName())
                ->get();
            return response()->json($columns);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function listDpTables()
    {
        $databaseName = DB::connection($this->connection)->getDatabaseName();
        $tables = DB::connection($this->connection)->table('information_schema.tables')
            ->select('table_name')
            ->where('table_schema', $databaseName)
            ->where('table_name', 'like', 'dp\_%')
            ->get();
        return response()->json($tables);
    }

    public function updateDatapotensi(Request $request, $table)
    {
        try {
            if (!Schema::connection($this->connection)->hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $id = $request->input('id');
            $data = $request->except('id');
            \Log::info("Updating table $table where id=$id with", $data);
            DB::connection($this->connection)->table($table)->where('id', $id)->update($data);
            return response()->json(['message' => 'Update successful']);
        } catch (\Exception $e) {
            \Log::error($e);
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    private function getChecklistData($table_name, $kolom_name, $value)
    {
        return DB::connection($this->connection)->table($table_name)
            ->where($kolom_name, $value)
            ->first();
    }
}