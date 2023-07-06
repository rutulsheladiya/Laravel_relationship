<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment1tomp extends Model
{
    use HasFactory;
    function commentofboth()
    {
        return $this->morphTo();
    }
}
