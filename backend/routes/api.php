<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Route;
use Carbon\Carbon;
use App\Http\Controllers\ttc_teling_controllers\data_potensi;
use App\Http\Controllers\ttc_teling_controllers\checklist;



Route::prefix('ttc_teling')->group(function () {
    Route::prefix('checklist')->group(function () {
        Route::get('/ChecklistPUE', [checklist::class, 'checklistPUE']);
    });
    Route::prefix('data_potensi')->group(function () {
        Route::get('/hello', [data_potensi::class, 'hello']);
        Route::get('/generate_datapotensi/{table}', [data_potensi::class, 'generateDatapotensi']);
        Route::get('/generate_columns/{table}', [data_potensi::class, 'generateColumns']);
        Route::get('/list_dp_tables', [data_potensi::class, 'listDpTables']);
        Route::post('/update_datapotensi/{table}', [data_potensi::class, 'updateDatapotensi']);
        ;
    });
     Route::get('/hello', [data_potensi::class, 'hello']);
});