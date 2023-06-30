<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Post;


class AuthorController extends Controller
{
    public function add_author()
    {
        $post = new Post();
        $post->title = "PHP/Laravel";
        $post->content = "PHP is easy Language";

        $author = new Author();
        $author->Name = "Rutul Sheladiya";
        $author->email = "rutulsheladiya2@gmail.com";

        $author->save();
        $author->post()->save($post);
    }

    public function getpost($id){
       $author = Author::find($id);
       $author->post;
       dump($author->toArray());
    }
}
