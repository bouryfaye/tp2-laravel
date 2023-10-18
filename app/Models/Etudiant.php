<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    use HasFactory;

     /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'nom',
        'adresse',
        'phone',
        'email',
        'dateNaissance',
        'ville_id',
        'user_id'
    ];

    
    public function blogHasVille() {
        return $this->hasOne('App\Models\Ville', 'id', 'ville_id'); 
    }

    public function blogHasUser() {
        return $this->hasOne('App\Models\User', 'id', 'user_id'); 
    }

}
