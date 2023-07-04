<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Supplier;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\DB;

class SupplierController extends Controller
{

    function orderDetail($supplierId){
        DB::connection()->enableQueryLog();

       $supplier = Supplier::find($supplierId);
       dump($supplier->productOrder->toArray());


    //    dump($supplier->through('product')->has('order'));
    // //    dump($supplier->product);
    //    $product = $supplier->product;

    // //    dump($product->order);

       $queries = DB::getQueryLog();

       dump($queries);
    }
}
