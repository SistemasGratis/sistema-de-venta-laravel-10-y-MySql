<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
  protected $fillable = ['total', 'id_cliente', 'id_usuario'];

  public function detalleventa()
  {
    return $this->hasMany(Detalleventa::class);
  }
}
