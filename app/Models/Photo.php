<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;

    protected $with = ['photoscomment'];
    function photoscomment(){
     return $this->hasMany(Comment::class);
    }
}
