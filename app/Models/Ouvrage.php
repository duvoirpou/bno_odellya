<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ouvrage extends Model
{
    use HasFactory;

    protected $fillable = [
        'titre',
        'auteur',
        'editeur',
        'categorie',
        'langue',
        'annee',
        'description',
        'nb_pages',
        'image',
        'pdf',
        'slug',
    ];

    public function likes()
    {
        return $this->hasMany('App\Models\Like');
    }

    public function isLikedByLoggedInUser()
    {
        return $this->likes->where('user_id', auth()->user()->id)->isEmpty() ? false : true;
    }
}
