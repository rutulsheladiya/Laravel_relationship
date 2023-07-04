<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $primaryKey = 'p_id';

    // public function order()
    // {
    //     return $this->hasOne(Order::class,"product_id","p_id");
    // }
}
