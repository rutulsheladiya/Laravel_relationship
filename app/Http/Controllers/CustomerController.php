<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Mobile;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{

    public function add_customer()
    {
        $mobile = new Mobile();
        $mobile->model = "SamsungG51";


        $customer = new Customer();
        $customer->name = "Dhulo";
        $customer->email = "Dhulo@gmail.com";

        $customer->save();
        $customer->mobile()->save($mobile);
    }

    public function showmobile($id){
      $mobile = Customer::find($id)->mobile;
      return $mobile;
    }

    public function allMobile(){
        // DB::enableQueryLog();
        // $customers = Customer::all();
        // // $customers->load('mobile');
        // foreach($customers as $customer)
        // {
        //     dump($customer->mobile->toArray());
        // }
        // dump(DB::getQueryLog());

        // using with()
        // DB::enableQueryLog();
        // $customers = Customer::with('mobile')->get();
        // // $customers->load('mobile');
        // foreach($customers as $customer)
        // {
        //     dump($customer->mobile->toArray());
        // }

        // dump(DB::getQueryLog());

        // using load()
        DB::enableQueryLog();
        $customers = Customer::all();
        $customers->load('mobile');
        foreach($customers as $customer)
        {
            dump($customer->toArray());
        }
        dump(DB::getQueryLog());
    }
}
