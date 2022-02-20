<?php

use App\Http\Controllers\CategorieController;
use App\Http\Controllers\DepenseController;
use App\Http\Controllers\UserController;
use App\Models\Categorie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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


Route::post('login',[UserController::class,'login']);

Route::post('add_user',[UserController::class,'addUser']);

Route::post('add_revenue',[CategorieController::class,'addRevenue']);

Route::post('add_depense',[DepenseController::class,'addDepense'])->middleware("auth:api") ;

Route::get('all_depense',[DepenseController::class,'getDepense'])->middleware("auth:api") ;

Route::get('one_depense/{id}',[DepenseController::class,'getDepenseById'])->middleware("auth:api") ;

Route::put('update_depense/{id}',[DepenseController::class,'updateDepense'])->middleware("auth:api") ;

Route::delete('delete_depense/{id}',[DepenseController::class,'deleteDepense'])->middleware("auth:api") ;

Route::post('update_password',[UserController::class,'updatePassword']);

Route::post('add_revenue',[DepenseController::class,'addRevenue'])->middleware("auth:api") ;

Route::get('total_revenue',[CategorieController::class,'totalRevenue'])->middleware("auth:api");

Route::get('montant_journee',[CategorieController::class,'montantTotalJour'])->middleware("auth:api");

Route::get('montant_mois',[CategorieController::class,'montantTotalMois'])->middleware("auth:api");

Route::get('montant_annee',[CategorieController::class,'montantTotalAnnee'])->middleware("auth:api");

Route::get('montant',[CategorieController::class,'montantMois'])->middleware("auth:api");




Route::get('user',function(){
    return Auth::user();
})->middleware("auth:api") ;

Route::get('categorie',function(){
    return Categorie::all();
});