<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    use HasFactory;
    function findsinger()
    {
        return $this->belongsToMany(Singer::class, 'singer_songs')->withPivot('created_at','updated_at');
    }
}
