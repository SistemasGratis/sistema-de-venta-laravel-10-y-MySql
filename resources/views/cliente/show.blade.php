@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    {{-- {{ $producto->name ?? "{{ __('Show') Producto" }} --}}
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="float-left">
                        <span class="card-title">{{ __('Show') }} Producto</span>
                    </div>
                    <div class="float-right">
                        <a class="btn btn-primary" href="{{ route('productos.index') }}"> {{ __('Back') }}</a>
                    </div>
                </div>

                <div class="card-body">

                    <div class="form-group">
                        <strong>Codigo:</strong>
                        {{ $producto->codigo }}
                    </div>
                    <div class="form-group">
                        <strong>Producto:</strong>
                        {{ $producto->producto }}
                    </div>
                    <div class="form-group">
                        <strong>Precio Compra:</strong>
                        {{ $producto->precio_compra }}
                    </div>
                    <div class="form-group">
                        <strong>Precio Venta:</strong>
                        {{ $producto->precio_venta }}
                    </div>
                    <div class="form-group">
                        <strong>Foto:</strong>
                        {{ $producto->foto }}
                    </div>

                </div>
            </div>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script>
        console.log('Hi!');
    </script>
@stop
