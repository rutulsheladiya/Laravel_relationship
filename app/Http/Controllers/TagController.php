<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    //
    function InsertTag()
    {

        $data = [["name"=> "food"],["name"=> "travel"],["name"=>"new_post"]];
        Tag::insert($data);
    }
}
