<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mobile;

class MobileController extends Controller
{
    public function showcustomer($id)
    {
        $cust = Mobile::find($id);
        $cust->customer;
        dump($cust->toArray());
    }
}
