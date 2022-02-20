<?php

namespace App\Http\Controllers;

use App\Models\Categorie;
use App\Models\Revenue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategorieController extends Controller
{
    public function store(Request $request){
        $this->validate($request,[
            'nom'=>'required',
            'typeCategorie'=>'required',
        ]);


        $categorie = Categorie::create([
            'nom' => $request->nom,
            'typeCategorie' => $request->typeCategorie,
        ]);

        return response()->json([
            'categorie' =>$categorie
            
        ]);
    }

    public function addRevenue(Request $request){
        $this->validate($request,[
            'solde'  => 'required',
            'categorie_id'=> 'required',
        ]);

        $revenue = Revenue::create([
            'solde'=>$request->solde,
            'categorie_id' =>$request->categorie,
            'user_id' => auth()->id(),
        ]);

        return response()->json([
            'revenue'=> $revenue
        ]);
    }

    public function montantTotalJour(){
        $data = DB::table('depenses')
        ->join('categories','depenses.categorie_id','=','categories.id')
        ->select('categories.nom',DB::raw('SUM(montant) as montant'))
        ->groupBy('categories.nom')
        ->where('user_id',auth()->user()->id )
        ->whereYear('depenses.created_at',now())
        ->whereMonth('depenses.created_at',now())
        ->whereDay('depenses.created_at',now())
        ->get();
        return response()->json($data,200) ;

        
    }

    public function montantTotalMois(){
        $data = DB::table('depenses')
        ->join('categories','depenses.categorie_id','=','categories.id')
        ->select('categories.nom',DB::raw('SUM(montant) as montant'))
        ->groupBy('categories.nom')
        ->where('user_id',auth()->user()->id )
        ->whereYear('depenses.created_at',now())
        ->whereMonth('depenses.created_at',now())
        ->get();
        return response()->json($data,200) ;
    }

    public function montantTotalAnnee(){
        $data = DB::table('depenses')
        ->join('categories','depenses.categorie_id','=','categories.id')
        ->select('categories.nom',DB::raw('SUM(montant) as montant'))
        ->groupBy('categories.nom')
        ->where('user_id',auth()->user()->id )
        ->whereYear('depenses.created_at',now())
        ->get();
        return response()->json($data,200) ;
    }

    public function totalRevenue(){
         $data = DB::table('revenues')
        ->select(DB::raw('SUM(solde) as revenue_total'))
        ->where('user_id',auth()->user()->id )
        ->groupBy('user_id')
        ->get();
        return response()->json($data,200) ;
    }
       
    public function montantMois(){
        $data = DB::table('depenses')
        ->join('categories','depenses.categorie_id','=','categories.id')
        ->select(DB::raw('SUM(montant) as montant'))
        //->groupBy('categories.nom')
        ->where('user_id',auth()->user()->id )
        ->whereYear('depenses.created_at',now())
        ->whereMonth('depenses.created_at',now())
        ->get();
        return response()->json($data,200) ;
    }
}
