<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Depense;
use App\Models\Revenue;

class DepenseController extends Controller
{

    public function addDepense(Request $request){

       
        $this->validate($request, [
            'nom' => 'required',
            'date' => 'required',
            'montant' => 'required',
            'description' => 'required',
            'categorie_id' => 'required',
            
            
        ]);


        $post = new Depense();
        $post->nom =$request->nom;
        $post->date =$request->date;
        $post->montant = $request->montant;
        $post->description =$request->description;
        $post->categorie_id =$request->categorie_id;
        $post->user_id =auth()->user()->id;

        $post->save();
        return response()->json([
        'depense'=>$post,
        ],200);
    }

    public function getDepense() {

        $data = Depense::where('user_id',auth()->user()->id)->get();
        if(is_null($data)){
            return response()->json(['message'=>'pas encore fait de depense']);
        }
        return response()->json($data, 200);
    }

    public function getDepenseById($id) {
        $depense = Depense::find($id);
        if(is_null($depense)) { 
            return response()->json(['message' => 'depanse non trouvé'], 404);
        }
        return response()->json($depense, 200);
    }

    public function updateDepense(Request $request, $id) {

        $depense = Depense::find($id);
        if(is_null($depense)) {
            return response()->json(['message' => 'depense n\'existe pas'], 404);
        }
        $depense->update($request->all());
        return response($depense, 200);
    }

    public function deleteDepense($id) {
        $depense = Depense::find($id);
        if(is_null($depense)) {
            return response()->json(['message' => 'depense n\'existe pas'], 404);
        }
        $depense->delete();
        return response()->json(null, 204);
    }

    public function addRevenue(Request $request){

        $this->validate($request,[
            'solde'=> 'required',
            'categorie_id'=> 'required',
        ]);

        $post = new Revenue();
        $post->solde = $request->solde;
        $post->categorie_id = $request->categorie_id;
        $post->user_id =auth()->user()->id;
        $post->save();

        return response()->json([
            'depense'=>$post,
            ],200);

    }



}