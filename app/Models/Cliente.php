<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{

  static $rules = [
    'nombre' => 'required',
    'telefono' => 'required',
    'direccion' => 'required'
  ];
  
  protected $fillable = ['nombre', 'telefono', 'direccion'];
}
