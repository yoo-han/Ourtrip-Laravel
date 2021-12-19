<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\Api\AuthController;
// use App\Http\Controllers\VerifyEmailController;
// use App\Http\Controllers\Api\ReservationController;

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
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', 'Api\AuthController@register');
Route::post('login', 'Api\AuthController@login');

// Verify email
Route::get('email/verify/{id}', 'VerifyEmailController@verify')->name('verificationapi.verify');
Route::get('email/resend', 'VerifyEmailController@resend')->name('verificationapi.resend');

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('user/{id}', 'Api\AuthController@show');
    Route::put('user/{id}', 'Api\AuthController@update');

    Route::get('reservation/{id}', 'Api\ReservationController@index');
    // Route::get('reservation/{id}', 'Api\ReservationController@show');
    Route::post('reservation', 'Api\ReservationController@store');
    Route::put('reservation/{id}', 'Api\ReservationController@update');
    Route::delete('reservation/{id}', 'Api\ReservationController@destroy');

    Route::get('location', 'Api\LocationController@index');
    // Route::get('location/{id}', 'Api\LocationController@show');
    Route::post('location', 'Api\LocationController@store');
    Route::put('location/{id}', 'Api\LocationController@update');
    Route::delete('location/{id}', 'Api\LocationController@destroy');

    Route::get('rating/{id}', 'Api\RatingController@index');
    // Route::get('rating/{id}', 'Api\RatingController@show');
    Route::post('rating', 'Api\RatingController@store');
    Route::put('rating/{id}', 'Api\RatingController@update');
    Route::delete('rating/{id}', 'Api\RatingController@destroy');
});