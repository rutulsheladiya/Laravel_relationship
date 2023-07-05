<?php

namespace App\Http\Controllers;

use App\Models\Singer;
use Illuminate\Http\Request;

class SingerController extends Controller
{
    function InsertSinger()
    {
        $singerName = new Singer();
        $singerName->singer_name    = "Mayur Patel";
        $singerName->save();

        $songId = [1, 4];
        $singerName->findsong()->attach($songId);
    }

    function FindSingerSong()
    {
        $singer = Singer::find(4);
        dd($singer->load('findsong')->toArray());
    }
}
