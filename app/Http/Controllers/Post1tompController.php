<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post1tomp;
use App\Models\Video1tomp;

class Post1tompController extends Controller
{
    function findPostComment()
    {
        $postId = Post1tomp::find(3);
        //   dump($postId->toArray());
        // dump($postId->comment->toArray());

        // dump($postId->load('comment')->toArray());
        dump($postId->doesntHave('comment')->get()->toArray());
    }

    function findVideoComment(){
        $videoId = Video1tomp::find(2);
        // dump($videoId->toArray());
        // dump($videoId->comment->toArray());
        dump($videoId->load('comment')->toArray());
    }
}
