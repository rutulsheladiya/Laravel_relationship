<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $primaryKey = "post_id";
    public function author(){
       return $this->belongsTo(Author::class,'author_id','author_id');
    }
}
