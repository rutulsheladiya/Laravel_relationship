<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User1t1p;
use App\Models\Post1t1p;
use App\Models\Image1t1p;
use App\Models\Image1t1p as ModelsImage1t1p;

class User1t1pController extends Controller
{
    function findImageOfUser()
    {
        // DB::enableQueryLog();
        // dump(DB::getQueryLog());

        $userimg = User1t1p::find(2);
        dump($userimg->toArray());
        dump($userimg->image->toArray());
    }

    // find image of post
    function findImageOfPost(){
      $postImg = Post1t1p::find(103);
      dump($postImg->toArray());
      dump($postImg->image->toArray());
    }




    // reverse of one to one morphic
    // find user and post from image
    function FindUserFromImage(){
      $user = Image1t1p::find(2);
      dump($user->imageable->toArray());
    }
}
