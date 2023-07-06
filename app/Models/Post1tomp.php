<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post1tomp extends Model
{
    use HasFactory;
    function comment()
    {
        return $this->morphMany(Comment1tomp::class, 'commentable');
    }
}
