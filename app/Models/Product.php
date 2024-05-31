<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'name',
        'qty',
        'satuan_id',
        'lokasi_id',
        'kategori_id',
        'deskripsi',
    ];

    public function satuan()
    {
        return $this->belongsTo(Satuan::class);
    }

    public function lokasi()
    {
        return $this->belongsTo(Lokasi::class);
    }

    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }

    public function stokIn()
    {
        return $this->hasMany(StokIn::class);
    }

    public function stokOut()
    {
        return $this->hasMany(StokOut::class);
    }

    public function getTotalStokIn()
    {
        return $this->stokIn->sum('qty');
    }

    public function getTotalStokOut()
    {
        return $this->stokOut->sum('qty');
    }
}