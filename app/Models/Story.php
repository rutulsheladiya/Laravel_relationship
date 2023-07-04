<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Story extends Model
{
    use HasFactory;

    protected $fillable = ["name"];
    function gettags(){
        return $this->belongsToMany(Tag::class,'story_tags','storie_id')->withPivot('created_at');
    }
}
