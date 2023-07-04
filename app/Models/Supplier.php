<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;

class Supplier extends Model
{
    use HasFactory;
    protected $primaryKey = 's_id';
    function productOrder() :HasOneThrough
    {
        return $this->hasOneThrough(Order::class,Product::class,'supplier_id','product_id','s_id','p_id');
    }

    // function product()
    // {
    //     return $this->hasOne(Product::class,"supplier_id","s_id");
    // }
}
