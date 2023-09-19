@extends('layouts.admin')
@section('content')
<div class="container-fluid">
    <div class="row">
        @include('admin.menu')
        <div class="col-sm-10">
            {!! Form::open(['route'=>['ruta.update',$ruta],'method'=>'PUT','files'=>true]) !!}
            <div class="jumbotron">   
                <div class="form-group">
                    <label for="title">INGRESE title</label>
                    {!! Form::text('title',$ruta->title ,['class'=>'form-control']) !!}
                </div>    
                <div class="form-group">
                    <label for="description">INGRESE DESCRIPTIÓN</label>
                    {!! Form::text('description',$ruta->description,['class'=>'form-control','maxlength'=>'67']) !!}
                </div>
                

                <div class="form-group">
                    <label for="nombre">INGRESE nombre</label>
                    {!! Form::text('nombre',$ruta->nombre ,['class'=>'form-control']) !!}
                </div>    
                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    {!! Form::textarea('descripcion',$ruta->descripcion,['class'=>'form-control']) !!}
                </div>
                <script>  CKEDITOR.replace( 'descripcion' );</script>


                <div class="form-group">
                    <label for="orden">INGRESE ORDEN</label>
                    {!! Form::text('orden',$ruta->orden,['class'=>'form-control']) !!}
                </div>
                <div class="form-group">
                    <label for="urlfoto">IMAGEN 900px X 400px</label> <br>
                    <img src="/img/ruta/{{$ruta->urlfoto}}">
                    {!! Form::file('urlfoto') !!}
                </div>
            </div>           
            {!! Form::submit('GUARDAR',['class'=>'btn btn-success']) !!}
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection