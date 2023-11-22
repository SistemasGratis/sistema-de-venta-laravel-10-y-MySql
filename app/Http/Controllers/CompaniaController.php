<?php

namespace App\Http\Controllers;

use App\Models\Compania;
use Illuminate\Http\Request;

/**
 * Class ClienteController
 * @package App\Http\Controllers
 */
class CompaniaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $compania = Compania::first();
        return view('compania.index', compact('compania'));
    }

    public function update(Request $request, Compania $compania)
    {
        request()->validate(Compania::$rules);

        $compania->update(
            [
                'nombre' => $request->nombre,
                'correo' => $request->correo,
                'telefono' => $request->telefono,
                'direccion' => $request->direccion,
            ]
        );

        return redirect()->route('compania.index')
            ->with('success', 'Datos actualizado');
    }
}
