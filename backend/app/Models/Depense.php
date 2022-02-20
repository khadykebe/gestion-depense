<?php

namespace App\Models;
use App\Models\Categorie;
use App\Models\User;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Depense extends Model
{
    use HasFactory;
    protected $fillable = [
        'nom',
        'date',
        'montant',
        'description',
        
    ];

    public function categorie()
    {
        return $this->belongsTo(Categorie::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
}

   
    
    
    
    
    /*$fillable = [
        'nom',
        'date',
        'montant',
        'description',
    ];*/

