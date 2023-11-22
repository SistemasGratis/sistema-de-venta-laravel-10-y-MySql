<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use App\Models\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

/**
 * Class ProductoController
 * @package App\Http\Controllers
 */
class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('producto.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $producto = new Producto();
        $categorias = Categoria::pluck('nombre', 'id');
        return view('producto.create', compact('producto', 'categorias'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Producto::$rules);

        if ($request->hasFile('foto')) {
            $imagePath = $request->file('foto')->store('uploads', 'public');
        } else {
            $imagePath = null;
        }

        $producto = Producto::create([
            'codigo' => $request->codigo,
            'producto' => $request->producto,
            'precio_compra' => $request->precio_compra,
            'precio_venta' => $request->precio_venta,
            'foto' => $imagePath,
            'id_categoria' => $request->id_categoria,
        ]);

        return redirect()->route('productos.index')
            ->with('success', 'Producto creado.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $producto = Producto::find($id);

        return view('producto.show', compact('producto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $producto = Producto::find($id);
        $categorias = Categoria::pluck('nombre', 'id');
        return view('producto.edit', compact('producto', 'categorias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Producto $producto)
    {
        request()->validate(Producto::$rules);

        if ($request->hasFile('foto')) {
            $imagePath = $request->file('foto')->store('uploads', 'public');
            // Eliminar la imagen anterior si existe
            if ($producto->foto) {
                Storage::disk('public')->delete($producto->foto);
            }
        } else {
            $imagePath = $producto->foto;
        }

        $producto->update(
            [
                'codigo' => $request->codigo,
                'producto' => $request->producto,
                'precio_compra' => $request->precio_compra,
                'precio_venta' => $request->precio_venta,
                'foto' => $imagePath,
                'id_categoria' => $request->id_categoria,
            ]
        );

        return redirect()->route('productos.index')
            ->with('success', 'Producto actualizado');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $producto = Producto::find($id)->delete();
        return ($producto) ? 'Producto eliminado' : 'Error al eliminar';
    }
}
