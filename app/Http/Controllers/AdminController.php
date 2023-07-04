<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Photo;
use App\Models\Comment;

class AdminController extends Controller
{
    function getComment(){
        $admin = Admin::find(2);
        $admin->load('photo');
        dump($admin->toArray());
        dump($admin->comment->toArray());
    }
}
