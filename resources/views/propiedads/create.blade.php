@extends('layouts.main', ['activePage' => 'propiedads', 'titlePage' => 'Nueva Propiedad'])

@section('content')
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form method="POST" action="{{ route('propiedads.store') }}" class="form-horizontal">
                        @csrf
                        <div class="card ">
                            <!--Header-->
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Propiedad</h4>
                                <p class="card-category">Ingresar datos del la nueva propiedad</p>
                            </div>
                            <!--End header-->
                            <!--Body-->
                            <div class="card-body">
                                <div class="row">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm">
                                                <select class="form-control" name="categoria">
                                                    <option value="">Seleccione la categoria</option>
                                                    @foreach ($inmuebles as $inmueble)
                                                        @if ($inmueble['id'] == old('categoria'))
                                                            <option value="{{ $inmueble['id'] }}" selected>
                                                                {{ $inmueble['categoria_inmueble'] }}</option>
                                                        @else
                                                            <option value="{{ $inmueble['id'] }}">
                                                                {{ $inmueble['categoria_inmueble'] }}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('categoria'))
                                                    <span class="error text-danger"
                                                        for="input-categoria">{{ $errors->first('categoria') }}</span>
                                                @endif
                                            </div>
                                            {{--  --}}
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="construccion"
                                                    placeholder="Año" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <select class="form-control" name="estado">
                                                    <option value="">Seleccione estado</option>
                                                    @foreach ($estados as $estado)
                                                        @if ($estado['id'] == old('estado'))
                                                            <option value="{{ $estado['id'] }}" selected>
                                                                {{ $estado['estado_propiedad'] }}</option>
                                                        @else
                                                            <option value="{{ $estado['id'] }}">
                                                                {{ $estado['estado_propiedad'] }}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('estado'))
                                                    <span class="error text-danger"
                                                        for="input-estado">{{ $errors->first('estado') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="direccion"
                                                    placeholder="Dirección" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="barrio"
                                                    placeholder="Barrio/Zona" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="estrato"
                                                    placeholder="Estrato" autocomplete="off" autofocus>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="ciudad"
                                                    placeholder="Ciudad" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="valor"
                                                    placeholder="Valor" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="contactos"
                                                    placeholder="Contactos" autocomplete="off" autofocus>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="propietario"
                                                    placeholder="Propietario" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <select class="form-control" name="tipo_documento">
                                                    <option value="">Seleccione tipo documento</option>
                                                    @foreach ($documentos as $documento)
                                                        @if ($documento['id'] == old('tipo_documento'))
                                                            <option value="{{ $documento['id'] }}" selected>
                                                                {{ $documento['documento_per'] }}</option>
                                                        @else
                                                            <option value="{{ $documento['id'] }}">
                                                                {{ $documento['documento_per'] }}</option>
                                                        @endif
                                                    @endforeach
                                                </select>
                                                @if ($errors->has('tipo_documento'))
                                                    <span class="error text-danger"
                                                        for="input-tipo_documento">{{ $errors->first('tipo_documento') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="documento"
                                                    placeholder="Número documento" autocomplete="off" autofocus>
                                            </div>
                                        </div>
                                        <div class="row">
                                            {{-- <label for="title" class="col-sm-2 col-form-label">Post title</label> --}}
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="contactos_propietario"
                                                    placeholder="Contacto de propietario" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="direccion_propietario"
                                                    placeholder="Dirección de propietario" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="correo"
                                                    placeholder="Correo" autocomplete="off" autofocus>
                                            </div>
                                        </div>
                                        <div class="row">                                      
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="nota"
                                                    placeholder="Nota" autocomplete="off" autofocus>
                                            </div>
                                            <div class="col-sm">
                                                <input type="text" class="form-control" name="observacion"
                                                    placeholder="Observación" autocomplete="off" autofocus>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End body-->
                                <!--Footer-->
                                <div class="card-footer ml-auto mr-auto">
                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                </div>
                                <!--End footer-->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
