<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    use HasFactory;
    function comment(){
        return $this->hasManyThrough(Comment::class,Photo::class);
    }
    function photo(){
        return $this->hasMany(Photo::class);
    }
}
