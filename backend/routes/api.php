<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Route;
use Carbon\Carbon;

// Alias untuk data_potensi dari dua namespace berbeda
use App\Http\Controllers\ttc_teling_controllers\data_potensi as DataPotensiTeling;
use App\Http\Controllers\ttc_teling_controllers\checklist as CheckListTeling;

use App\Http\Controllers\ttc_paniki_controllers\data_potensi as DataPotensiPaniki;
use App\Http\Controllers\ttc_paniki_controllers\checklist as CheckListPaniki;

Route::prefix('ttc_teling')->group(function () {
    Route::prefix('checklist')->group(function () {
        Route::get('/ChecklistPUE', [CheckListTeling::class, 'checklistPUE']);
        Route::get('/list_dp_tables/{table_name}/{kolom_name}/{value}', [CheckListTeling::class, 'getDivisionData']);
    });
    Route::prefix('data_potensi')->group(function () {
        Route::get('/hello', [DataPotensiTeling::class, 'hello']);
        Route::get('/generate_datapotensi/{table}', [DataPotensiTeling::class, 'generateDatapotensi']);
        Route::get('/generate_columns/{table}', [DataPotensiTeling::class, 'generateColumns']);
        Route::post('/update_datapotensi/{table}', [DataPotensiTeling::class, 'updateDatapotensi']);
    });
    Route::get('/hello', [DataPotensiTeling::class, 'hello']);
    ///
});

Route::prefix('ttc_paniki')->group(function () {
    Route::prefix('checklist')->group(function () {
        Route::get('/ChecklistPUE', [CheckListPaniki::class, 'checklistPUE']);
    });
    Route::prefix('data_potensi')->group(function () {
        Route::get('/hello', [DataPotensiPaniki::class, 'hello']);
        Route::get('/generate_datapotensi/{table}', [DataPotensiPaniki::class, 'generateDatapotensi']);
        Route::get('/generate_columns/{table}', [DataPotensiPaniki::class, 'generateColumns']);
        Route::get('/list_dp_tables', [DataPotensiPaniki::class, 'listDpTables']);
        Route::post('/update_datapotensi/{table}', [DataPotensiPaniki::class, 'updateDatapotensi']);
    });
    Route::get('/hello', [DataPotensiPaniki::class, 'hello']);
});