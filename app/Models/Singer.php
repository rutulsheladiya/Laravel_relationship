<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Singer extends Model
{
    use HasFactory;
    function findsong(){
      return $this->belongsToMany(Song::class,"singer_songs")->withTimestamps();
    }
}
