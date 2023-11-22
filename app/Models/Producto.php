<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Producto
 *
 * @property $id
 * @property $codigo
 * @property $producto
 * @property $precio_compra
 * @property $precio_venta
 * @property $foto
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Producto extends Model
{

  static $rules = [
    'codigo' => 'required',
    'producto' => 'required',
    'precio_compra' => 'required',
    'precio_venta' => 'required',
    'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['codigo', 'producto', 'precio_compra', 'precio_venta', 'foto', 'id_categoria'];

  public function categoria()
  {
    return $this->belongsTo(Categoria::class);
  }
}
