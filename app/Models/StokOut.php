<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Product;

class StokOut extends Model
{
    use HasFactory;

    protected $fillable = [
        'date',
        'product_id',
        'qty',
        'description',
    ];
    
  

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}