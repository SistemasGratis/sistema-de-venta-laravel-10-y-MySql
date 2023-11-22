<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Compania;
use App\Models\Detalleventa;
use App\Models\Venta;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\View;

use Illuminate\Http\Request;

/**
 * Class ClienteController
 * @package App\Http\Controllers
 */
class VentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('venta.index');
    }

    public function store(Request $request)
    {
        $datosVenta = $request->all();

        $id_cliente = $datosVenta['id_cliente'];
        //registrar venta
        $total = Cart::subtotal();
        if ($total > 0) {
            $userId = Auth::id();
            $sale = Venta::create([
                'total' => $total,
                'id_cliente' => $id_cliente,
                'id_usuario' => $userId,
            ]);
            if ($sale) {
                foreach (Cart::content() as $item) {
                    Detalleventa::create([
                        'precio' => $item->price,
                        'cantidad' => $item->qty,
                        'id_producto' => $item->id,
                        'id_venta' => $sale->id
                    ]);
                }
                Cart::destroy();
                return response()->json([
                    'title' => 'VENTA GENERADA',
                    'icon' => 'success',
                    'ticket' => $sale->id
                ]);
            }
        } else {
            return response()->json([
                'title' => 'CARRITO VACIO',
                'icon' => 'warning'
            ]);
        }
    }

    public function ticket($id)
    {
        $data['company'] = Compania::first();

        $data['venta'] = Venta::join('clientes', 'ventas.id_cliente', '=', 'clientes.id')
            ->select('ventas.*', 'clientes.nombre', 'clientes.telefono', 'clientes.direccion')
            ->where('ventas.id', $id)
            ->first();

        $data['productos'] = Detalleventa::join('productos', 'detalleventa.id_producto', '=', 'productos.id')
            ->select('detalleventa.*', 'productos.producto')
            ->where('detalleventa.id_venta', $id)
            ->get();

        $fecha_venta = $data['venta']['created_at'];
        $data['fecha'] = date('d/m/Y', strtotime($fecha_venta));
        $data['hora'] = date('h:i A', strtotime($fecha_venta));
        // Generar el contenido del ticket en HTML
        $html = View::make('venta.ticket', $data)->render();
        //Pdf::setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);
        Pdf::setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);
        // Generar el PDF utilizando laravel-dompdf
        //$pdf = Pdf::loadHTML($html)->setPaper([0, 0, 226.77, 500], 'portrait')->setWarnings(false);
        $pdf = Pdf::loadHTML($html)->setPaper([0, 0, 140, 500], 'portrait')->setWarnings(false);

        return $pdf->stream('ticket.pdf');
    }

    public function show()
    {
        return view('venta.show');
    }

    public function cliente(Request $request)
    {
        $term = $request->get('term');
        $clients = Cliente::where('nombre', 'LIKE', '%' . $term . '%')
            ->select('id', 'nombre AS label', 'telefono', 'direccion')
            ->limit(10)
            ->get();
        return response()->json($clients);
    }
}
