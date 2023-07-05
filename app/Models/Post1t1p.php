<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post1t1p extends Model
{
    use HasFactory;
    function image(){
        return $this->morphOne(Image1t1p::class,'imageable');
    }
}
