<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/get-more-suggestion-users/{skip}/{take}', [HomeController::class, 'getMoreSuggestionUsers'])->name('get.more.suggestion.users');
Route::post('/send-suggestion-request', [HomeController::class, 'sendSuggestionRequest'])->name('send.suggestion.request');
Route::delete('/delete-request/{id}', [HomeController::class, 'deleteRequest'])->name('delete.request');
Route::delete('/delete-connection/{id}', [HomeController::class, 'deleteConnection'])->name('delete.connection');
Route::patch('/accept-request/{id}', [HomeController::class, 'acceptRequest'])->name('accept.request');
Route::get('/get-more-connections/{skip}/{take}', [HomeController::class, 'getMoreConnections'])->name('get.more.connections');
Route::get('/user/get-more-requests/{skip}/{take}/{tab}', [HomeController::class, 'getMoreRequestUsers'])->name('get.more.requests.users');
Route::get('/get-more-connections-in-common/{id}/{counter}', [HomeController::class, 'getMoreConnectionsInCommon'])->name('get.more.connections.in.common');
Route::get('/connections', [HomeController::class, 'connection'])->name('connection');
Route::get('/get-connections-in-common/{id}', [HomeController::class, 'getConnectionsInCommon'])->name('get.connections.in.common');
