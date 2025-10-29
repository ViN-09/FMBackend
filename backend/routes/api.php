<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Route;
use Carbon\Carbon;

// Alias untuk data_potensi dari dua namespace berbeda
use App\Http\Controllers\ttc_teling_controllers\data_potensi as DataPotensiTeling;
use App\Http\Controllers\ttc_teling_controllers\data_potensi2 as DataPotensi2Teling;
use App\Http\Controllers\ttc_teling_controllers\checklist as CheckListTeling;
use App\Http\Controllers\ttc_teling_controllers\Checklist2 as CheckListTeling2;
use App\Http\Controllers\ttc_teling_controllers\reciver as ReciverTeling;
use App\Http\Controllers\ttc_teling_controllers\reciver2 as Reciver2Teling;
use App\Http\Controllers\ttc_teling_controllers\login as LoginTeling;
use App\Http\Controllers\ttc_teling_controllers\monitoring as MonitoringTeling;
use App\Http\Controllers\ttc_teling_controllers\visitor as VisitorTeling;
use App\Http\Controllers\ttc_teling_controllers\bankpassword as bankpasswordTeling;
use App\Http\Controllers\ttc_teling_controllers\ActivityLog as ActivityLogTeling;

use App\Http\Controllers\ttc_paniki_controllers\data_potensi as DataPotensiPaniki;
use App\Http\Controllers\ttc_paniki_controllers\checklist as CheckListPaniki;
use App\Http\Controllers\ttc_paniki_controllers\monitoring as MonitoringPaniki;

Route::prefix('ttc_teling')->group(function () {
    Route::prefix('checklist')->group(function () {
        Route::get('/ChecklistPUE', [CheckListTeling::class, 'checklistPUE']);
        Route::get('/tableReportList', [CheckListTeling::class, 'tableReportList']);
        Route::get('/list_dp_tables/{table_name}/{kolom_name}/{value}', [CheckListTeling::class, 'getDivisionData']);
        Route::post('/sendInfoReport', [CheckListTeling::class, 'reciveReportInfo']);
        Route::get('/{table}/{kolom}', [CheckListTeling::class, 'getChecklistDataToJSON']);
        Route::post('/updateStatus', [CheckListTeling::class, 'updateLatestReportStatus']);
        Route::get('/Genset1', [CheckListTeling::class, 'Genset1']);
        Route::get('/Genset2', [CheckListTeling::class, 'Genset2']);
        Route::get('/SKWH', [CheckListTeling::class, 'SUKwh']);
    });
    Route::prefix('checklist2')->group(function () {
        Route::get('/dialyActivityList', [CheckListTeling2::class, 'showDialyActivity']);
        Route::get('/pullreport/{id}/{type}', [CheckListTeling2::class, 'getReport']);
        Route::get('/requestTableStructure/{table}', [CheckListTeling2::class, 'requestTableStructure']);
    });
    Route::prefix('data_potensi')->group(function () {
        Route::get('/hello', [DataPotensiTeling::class, 'hello']);
        Route::get('/generate_datapotensi/{table}', [DataPotensiTeling::class, 'generateDatapotensi']);
        Route::get('/generate_columns/{table}', [DataPotensiTeling::class, 'generateColumns']);
        Route::post('/update_datapotensi/{table}', [DataPotensiTeling::class, 'updateDatapotensi']);
        Route::get('/puedashboard/{tanggal}/{jenis}', [DataPotensiTeling::class, 'puedatadashboard']);
    });
    Route::prefix('data_potensi2')->group(function () {
        Route::get('/fullDapot', [DataPotensi2Teling::class, 'fullDapot']);
        Route::post('/crudDapot', [DataPotensi2Teling::class, 'crudDapot']);
    });
    Route::prefix('datapush')->group(function () {
        Route::get('/hello', [ReciverTeling::class, 'hello']);
        Route::post('/reciver', [ReciverTeling::class, 'receiveRawJson']);
        Route::get('/avgDPM', [ReciverTeling::class, 'avgDPM']);
        Route::get('/jam', [ReciverTeling::class, 'clock']);
        Route::post('/temprec', [ReciverTeling::class, 'temporaryReceiver']);
    });
    Route::prefix('datapush2')->group(function () {
        Route::get('/hello', [Reciver2Teling::class, 'hello']);
        Route::post('/reciver', [Reciver2Teling::class, 'receiveRawJson']);
        Route::get('/avgDPM', [Reciver2Teling::class, 'avgDPM']);
        Route::get('/jam', [Reciver2Teling::class, 'clock']);
        Route::post('/temprec', [Reciver2Teling::class, 'temporaryReceiver']);
    });
    Route::prefix('login')->group(function () {
        Route::post('/try', [LoginTeling::class, 'cekLogin']);
    });
    Route::prefix('monitoring')->group(function () {
        Route::get('/data', [MonitoringTeling::class, 'dataMonitoring']);
        Route::get('/test', [MonitoringTeling::class, 'generateDailyPUE']);
    });
    Route::prefix('visitor')->group(function () {
        Route::post('/registry', [VisitorTeling::class, 'registvisitor']);
        Route::get('/visitors/recent', [VisitorTeling::class, 'getRecentVisitors']);
        Route::get('/waiting', [VisitorTeling::class, 'getWaitingApproval']); 
        Route::post('/visitors/{id}/update-status', [VisitorTeling::class, 'updateVisitorStatus']); 
        Route::get('/visitors/completed', [VisitorTeling::class, 'getCompletedVisitors']);

    });
    Route::prefix('bank_password')->group(function () {
        Route::get('/', [bankpasswordTeling::class, 'index']);
        Route::get('/list', [bankpasswordTeling::class, 'list']);
        Route::get('/{id}', [bankpasswordTeling::class, 'show']);
        Route::get('/{id}/decrypt', [bankpasswordTeling::class, 'decryptPassword']);
        Route::post('/add', [bankpasswordTeling::class, 'store']);
        Route::put('/{id}', [bankpasswordTeling::class, 'update']);       // ← update/edit
        Route::delete('/{id}', [bankpasswordTeling::class, 'destroy']);   // ← hapus
        Route::get('/hello/hello', [bankpasswordTeling::class, 'hello']);
    });
    Route::prefix('activitylog')->group(function () {
        Route::get('/', [ActivityLogTeling::class, 'getAllLogs']);
         Route::get('/user-bio/{id}', [ActivityLogTeling::class, 'getUserBio']);
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
    Route::prefix('monitoring')->group(function () {
        Route::get('/last-cache-pue', [MonitoringPaniki::class, 'getLastCachePue']);
        Route::get('/all-pue', [MonitoringPaniki::class, 'getAllPue']);
        Route::get('/average-pue', [MonitoringPaniki::class, 'getAverageData']);
        Route::get('/suhu', [MonitoringPaniki::class, 'getLastSuhu']);
        Route::get('/bbm', [MonitoringPaniki::class, 'getLastTank']);
    });
    Route::get('/hello', [DataPotensiPaniki::class, 'hello']);
});