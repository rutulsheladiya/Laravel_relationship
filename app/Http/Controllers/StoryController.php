<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Story;
use App\Models\Tag;


class StoryController extends Controller
{
    function InsertStory()
    {

        $data = [["name"=> "Ravi"],["name"=> "Dhulo"],["name"=>"Rutul"]];
        Story::insert($data);
    }

    function attachTag()
    {
        $story = Story::find(11);
        $tag1 = Tag::where('name','travel')->value('id');
        $tag2 = Tag::where('name','new_post')->value('id');
        $tag3 = Tag::where('name','food')->value('id');
        // dump($story->toArray());
        // dump($tag1);
        // dump($tag2);
        $story->gettags()->attach([$tag1,$tag2,$tag3]);
    }

    function getTag()
    {
        $story = Story::find(11);
        dump($story->load('gettags')->toArray());
        // foreach($story->gettags as $tag)
        // {
        //   dump($tag->pivot->created_at->toArray());
        // }

    }
}
