<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use App\Models\Cliente;
use App\Models\Producto;
use App\Models\Venta;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

/**
 * Class ClienteController
 * @package App\Http\Controllers
 */
class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $totales = [
            'sales' => Venta::count(),
            'products' => Producto::count(),
            'clients' => Cliente::count(),
            'categories' => Categoria::count()
        ];
        $nombresMeses = [
            1 => 'Enero',
            2 => 'Febrero',
            3 => 'Marzo',
            4 => 'Abril',
            5 => 'Mayo',
            6 => 'Junio',
            7 => 'Julio',
            8 => 'Agosto',
            9 => 'Septiembre',
            10 => 'Octubre',
            11 => 'Noviembre',
            12 => 'Diciembre',
        ];
        $ventasPorMeses = Venta::selectRaw('YEAR(created_at) as year, MONTH(created_at) as month, SUM(total) as total')
            ->groupBy('year', 'month')
            ->orderBy('year', 'asc')
            ->orderBy('month', 'asc')
            ->get();

        $ventas = [];
        foreach ($ventasPorMeses as $venta) {
            $year = $venta->year;
            $month = $nombresMeses[$venta->month];
            $ventas[$year][$month] = $venta->total;
        }

        $hoy = Carbon::now();
        $inicioSemana = $hoy->startOfWeek()->toDateString();
        $finSemana = $hoy->endOfWeek()->toDateString();

        $ventasPorSemana = Venta::select(DB::raw('DAYNAME(created_at) as dia'), DB::raw('SUM(total) as total'))
            ->whereBetween('created_at', ["{$inicioSemana} 00:00:00", "{$finSemana} 23:59:59"])
            ->groupBy('dia')
            ->get();

        return view('dashboard', compact('ventas', 'ventasPorSemana', 'totales'));
    }
}
