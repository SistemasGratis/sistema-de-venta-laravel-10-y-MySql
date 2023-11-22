<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{

  static $rules = [
    'nombre' => 'required'
  ];

  protected $table = 'categorias';

  protected $fillable = ['nombre'];

  public function productos()
  {
    return $this->hasMany(Producto::class);
  }
}
