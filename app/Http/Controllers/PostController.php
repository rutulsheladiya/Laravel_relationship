<?php

namespace App\Http\Controllers;
use App\Models\Author;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
 public function findauthor($id){
  $post = Post::find($id);
  dd($post->author->toArray());
 }
}
