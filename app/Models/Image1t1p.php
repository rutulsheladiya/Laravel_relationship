<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image1t1p extends Model
{
    use HasFactory;
    public function imageable()
    {
        return $this->morphTo();
    }
}
