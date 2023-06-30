<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Mobile;

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
}
