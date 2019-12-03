<?php

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

Route::pattern('id', '[0-9]+');
Route::get('employee',function(){
    return redirect("/");
});
Route::get('/',"EmployeeController@index");
Route::get('employee/create','EmployeeController@create');
Route::post('employee/store','EmployeeController@store');
Route::get('employee/show/{id}', 'EmployeeController@show');
Route::get('employee/edit/{id}', 'EmployeeController@edit');
Route::post('employee/update/{id}', 'EmployeeController@update');
Route::get('employee/delete/{id?}', 'EmployeeController@delete');
route::post("/employee/search","EmployeeController@search");
route::get("/employee/search/{searchkey?}","EmployeeController@searchkey");
Route::get('employee/destroy',"EmployeeController@destroy" );
Route::delete('employee/deletemore',"EmployeeController@deletemore" );

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home', function(){
    return redirect("/");
});



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
