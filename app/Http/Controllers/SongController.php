<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Song;

class SongController extends Controller
{
    function InsertSong()
    {
        $songname = new Song();
        $songname->song_name = "Song 5";
        $songname->save();
    }

    function Find_Singer()
    {
        $songId = Song::find(5);
        dd($songId->load('findsinger')->toArray());

        // fetch intermediate table column using pivot
        // foreach ($songId->findsinger as $role) {
        //     echo $role->pivot->created_at."<br>";
        // }

    }
}
