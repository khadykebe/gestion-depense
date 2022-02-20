<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{

    public function addUser(Request $request)
    {
        $this->validate($request, [
            'nom' => 'required',
            'prenom' => 'required',
            'dateNaissance' => 'required',
            'telephone' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:8',
        ]);
 
        $user = User::create([
            'nom' => $request->nom,
            'prenom' => $request->prenom,
            'dateNaissance' => $request->dateNaissance,
            'telephone' => $request->telephone,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
        $token = $user->createToken('user Password Grand Client')->accessToken;
        return response()->json([
            'token' => $token,
            'user'=>$user
        ], 200);
    }
     /**
     * Login
     */
   public function login(Request $request)
    {
        $request->validate([
            'email'=>'required|string|email|max:255|exists:users|email',
            'password'=>'required|string|min:8'
        ]);
        $user=User::where('email',$request->email)->first();
        if(Hash::check($request->password,$user->password)){
            $token = $user->createToken('user Password Grand Client')->accessToken;
            return response()->json([
                'token'=>$token,
                'user'=>$user
                
            ],200);
        }
        else{
            return response()->json([
                'message'=>'email  ou mot de passe incorrect',
            ],422);
        }

    }

  /*  public function updatePassword(Request $request){
        $this->validate($request,[

            'password' => 'required|min:8',
            'new_password '=> 'required|min:8',
            'confirme_password'=> 'required|same:new_password',

        ]);

        $user_connecter = auth()->user();
        if(Hash::check($request->new_password,$user_connecter->password)){
            $user_connecter->update([
                'password'=>bcrypt($request->new_password),
            ]);
        }
        return response()->json([
            'user'=>$user_connecter,
        ]);


    }*/

   
    

}
