<?php

namespace App\Http\Controllers\ttc_teling_controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;


class data_potensi extends Controller
{
    public function hello()
    {
        return response()->json(['message' => 'Hello from Laravel!']);
    }

    public function generateDatapotensi($table)
    {
        try {
            if (!Schema::hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $data = DB::table($table)->get();
            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function generateColumns($table)
    {
        try {
            if (!Schema::hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $columns = DB::table('information_schema.columns')
                ->select('COLUMN_NAME', 'DATA_TYPE')
                ->where('table_name', $table)
                ->where('table_schema', DB::getDatabaseName())
                ->get();
            return response()->json($columns);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function listDpTables()
    {
        $databaseName = DB::getDatabaseName();
        $tables = DB::table('information_schema.tables')
            ->select('table_name')
            ->where('table_schema', $databaseName)
            ->where('table_name', 'like', 'dp\_%')
            ->get();
        return response()->json($tables);
    }

    public function updateDatapotensi(Request $request, $table)
    {
        try {
            if (!Schema::hasTable($table)) {
                return response()->json(['error' => 'Table not found'], 404);
            }
            $id = $request->input('id');
            $data = $request->except('id');
            \Log::info("Updating table $table where id=$id with", $data);
            DB::table($table)->where('id', $id)->update($data);
            return response()->json(['message' => 'Update successful']);
        } catch (\Exception $e) {
            \Log::error($e);
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    private function getChecklistData($table_name, $kolom_name, $value)
    {
        return DB::table($table_name)
            ->where($kolom_name, $value)
            ->first();
    }

    /**
     *@param string $tanggal format yyyy-mm-dd
     * @param string $jenis all|daily|3hour
     */
    public function puedatadashboard($tanggal, $jenis)
    {
        try {
            $query = DB::table('data_pue');
            $carbonDate = Carbon::parse($tanggal);

            if ($jenis === 'all') {
                // ambil semua data untuk tanggal spesifik
                $data = $query->whereDate('date', $carbonDate->toDateString())
                    ->get();
            } elseif ($jenis === 'daily') {
                // ambil seluruh data untuk bulan dari tanggal request
                $startOfMonth = $carbonDate->copy()->startOfMonth()->toDateString();
                $endOfMonth = $carbonDate->copy()->endOfMonth()->toDateString();

                $data = $query->selectRaw("
                DATE(`date`) as tanggal,
                HOUR(`date`) as jam,
                AVG(kw_lv1) as kw_lv1,
                AVG(kva_lv1) as kva_lv1,
                AVG(kw_lv2) as kw_lv2,
                AVG(kva_lv2) as kva_lv2,
                AVG(total_kva_pln) as total_kva_pln,
                AVG(total_load_pln) as total_load_pln,
                AVG(kw_rec1_2_ups1) as kw_rec1_2_ups1,
                AVG(kw_rec4_ups2) as kw_rec4_ups2,
                AVG(kw_rec3_5) as kw_rec3_5,
                AVG(kw_rec9_10_11_12) as kw_rec9_10_11_12,
                AVG(total_kva_it_telco) as total_kva_it_telco,
                AVG(total_load_it_telco) as total_load_it_telco,
                AVG(pue) as pue
            ")
                    ->whereBetween('date', [$startOfMonth, $endOfMonth])
                    ->groupByRaw("DATE(`date`), HOUR(`date`)")
                    ->orderByRaw("tanggal ASC, jam ASC")
                    ->get();
            } elseif ($jenis === '3hour') {
                // ambil rata-rata data untuk jam tertentu (08, 15, 20) dalam 1 bulan penuh dari tanggal request
                $data = $query->select(
                    DB::raw('DATE(date) as tanggal'),
                    DB::raw('HOUR(date) as jam'),
                    DB::raw('AVG(kw_lv1) as kw_lv1'),
                    DB::raw('AVG(kva_lv1) as kva_lv1'),
                    DB::raw('AVG(kw_lv2) as kw_lv2'),
                    DB::raw('AVG(kva_lv2) as kva_lv2'),
                    DB::raw('AVG(total_kva_pln) as total_kva_pln'),
                    DB::raw('AVG(total_load_pln) as total_load_pln'),
                    DB::raw('AVG(kw_rec1_2_ups1) as kw_rec1_2_ups1'),
                    DB::raw('AVG(kw_rec4_ups2) as kw_rec4_ups2'),
                    DB::raw('AVG(kw_rec3_5) as kw_rec3_5'),
                    DB::raw('AVG(kw_rec9_10_11_12) as kw_rec9_10_11_12'),
                    DB::raw('AVG(total_kva_it_telco) as total_kva_it_telco'),
                    DB::raw('AVG(total_load_it_telco) as total_load_it_telco'),
                    DB::raw('AVG(pue) as pue')
                )
                    ->whereYear('date', $carbonDate->year)
                    ->whereMonth('date', $carbonDate->month)
                    ->whereIn(DB::raw('HOUR(date)'), [8, 15, 20])
                    ->groupBy(DB::raw('DATE(date)'), DB::raw('HOUR(date)'))
                    ->orderBy('tanggal')
                    ->orderBy('jam')
                    ->get();
            } elseif ($jenis === 'perhour') {
                // ambil rata-rata per jam seluruh hari
                $data = $query->select(
                    DB::raw('HOUR(date) as jam'),
                    DB::raw('AVG(kw_lv1) as kw_lv1'),
                    DB::raw('AVG(kva_lv1) as kva_lv1'),
                    DB::raw('AVG(kw_lv2) as kw_lv2'),
                    DB::raw('AVG(kva_lv2) as kva_lv2'),
                    DB::raw('AVG(total_kva_pln) as total_kva_pln'),
                    DB::raw('AVG(total_load_pln) as total_load_pln'),
                    DB::raw('AVG(kw_rec1_2_ups1) as kw_rec1_2_ups1'),
                    DB::raw('AVG(kw_rec4_ups2) as kw_rec4_ups2'),
                    DB::raw('AVG(kw_rec3_5) as kw_rec3_5'),
                    DB::raw('AVG(kw_rec9_10_11_12) as kw_rec9_10_11_12'),
                    DB::raw('AVG(total_kva_it_telco) as total_kva_it_telco'),
                    DB::raw('AVG(total_load_it_telco) as total_load_it_telco'),
                    DB::raw('AVG(pue) as pue')
                )
                    ->whereDate('date', $carbonDate->toDateString())
                    ->groupBy(DB::raw('HOUR(date)'))
                    ->orderBy('jam')
                    ->get();
            } else {
                return response()->json(['message' => 'Jenis request tidak valid'], 400);
            }

            return response()->json($data);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Terjadi kesalahan', 'error' => $e->getMessage()], 500);
        }
    }

}
