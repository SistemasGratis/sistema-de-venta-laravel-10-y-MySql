<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Compania extends Model
{

  static $rules = [
    'nombre' => 'required',
    'telefono' => 'required',
    'correo' => 'required',
    'direccion' => 'required'
  ];

  protected $table = 'compania';
  
  protected $fillable = ['nombre', 'correo', 'telefono', 'direccion'];
}
