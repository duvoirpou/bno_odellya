<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auteurs_ouvrage extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];
}
