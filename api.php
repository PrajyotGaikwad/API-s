<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Models\Student;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('student',[StudentController::class, 'index']);
Route::get('student/show/{id}',[StudentController::class, 'show']);
Route::post('student/add',[StudentController::class, 'store']);
Route::post('student/multiadd',[StudentController::class, 'multistore']);
Route::post('student/update/{id}',[StudentController::class, 'update']);
Route::delete('student/delete/{id}',[StudentController::class, 'delete']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
