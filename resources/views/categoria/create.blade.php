@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Dashboard</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">

            @includeif('partials.errors')

            <div class="card card-default">
                <div class="card-header">
                    <span class="card-title">{{ __('Create') }} Categorias</span>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('categorias.store') }}" role="form">
                        @csrf

                        @include('categoria.form')

                    </form>
                </div>
            </div>
        </div>
    </div>
@stop
