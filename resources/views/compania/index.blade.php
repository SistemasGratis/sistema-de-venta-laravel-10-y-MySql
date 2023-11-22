@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Compania</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <div style="display: flex; justify-content: space-between; align-items: center;">

                        <span id="card_title">
                            {{ __('Compania') }}
                        </span>

                    </div>
                </div>
                <div class="card-body">
                    @if ($message = Session::get('success'))
                        <div class="alert fade_success .fade">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">&times;</button>
                            <strong>{{ $message }}</strong>
                        </div>
                    @endif
                    <form method="POST" action="{{ route('compania.update', $compania) }}" role="form">
                        {{ method_field('PUT') }}

                        @csrf

                        <div class="box box-info padding-1">
                            <div class="box-body row">
                                <div class="form-group col-md-4">
                                    {{ Form::label('nombre') }}
                                    {{ Form::text('nombre', $compania->nombre, ['class' => 'form-control' . ($errors->has('nombre') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
                                    {!! $errors->first('nombre', '<div class="invalid-feedback">:message</div>') !!}
                                </div>
                                <div class="form-group col-md-4">
                                    {{ Form::label('telefono') }}
                                    {{ Form::text('telefono', $compania->telefono, ['class' => 'form-control' . ($errors->has('telefono') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono']) }}
                                    {!! $errors->first('telefono', '<div class="invalid-feedback">:message</div>') !!}
                                </div>
                                <div class="form-group col-md-4">
                                    {{ Form::label('correo') }}
                                    {{ Form::text('correo', $compania->correo, ['class' => 'form-control' . ($errors->has('correo') ? ' is-invalid' : ''), 'placeholder' => 'Correo']) }}
                                    {!! $errors->first('correo', '<div class="invalid-feedback">:message</div>') !!}
                                </div>
                                <div class="form-group col-md-5">
                                    {{ Form::label('direccion') }}
                                    {{ Form::text('direccion', $compania->direccion, ['class' => 'form-control' . ($errors->has('direccion') ? ' is-invalid' : ''), 'placeholder' => 'Dirección']) }}
                                    {!! $errors->first('direccion', '<div class="invalid-feedback">:message</div>') !!}
                                </div>

                            </div>
                            <div class="box-footer mt20 text-right">
                                <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
@endsection
