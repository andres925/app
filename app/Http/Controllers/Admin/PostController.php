<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Str;
use Image;

class PostController extends Controller
{
    public function index(){
        $posts = Post::all();
        return view("admin.post.index",compact("posts"));
    }
    public function create(){
        return view('admin.post.create');
    }

    public function store(Request $request){

        $post = new post($request->all());
        
        if($request->hasFile('urlfoto')){

            $imagen = $request->file('urlfoto');
            $nuevonombre = 'post_'.time().'.'.$imagen->guessExtension();
            Image::make($imagen->getRealPath())
            ->fit(900,400,function($constraint){ $constraint->upsize();  })
            ->save( public_path('/img/post/'.$nuevonombre));

            $post->urlfoto = $nuevonombre;
        }
        $post->slug     =   Str::slug($request->nombre);
        $post->save();
        return redirect('/admin/post');

    }

    public function edit($id){
        $post = Post::findOrFail($id);
        return view('admin.post.edit',compact('post'));
    }

    public function update(Request $request,$id){

        $post = Post::findOrFail($id);
        $post->fill($request->all());

        $foto_anterior     = $post->urlfoto;


        if($request->hasFile('urlfoto')){

            $postAnterior = public_path('/img/post/'.$foto_anterior);
            if(file_exists($postAnterior)){ unlink(realpath($postAnterior)); }

            $imagen = $request->file('urlfoto');
            
            $nuevonombre = 'post_'.time().'.'.$imagen->guessExtension();
            Image::make($imagen->getRealPath())
            ->fit(900,400,function($constraint){ $constraint->upsize();  })
            ->save( public_path('/img/post/'.$nuevonombre));

            $post->urlfoto = $nuevonombre;
        }
        $post->slug     =   Str::slug($request->nombre);
        $post->save();
        return redirect('/admin/post');
    }

    public function destroy($id){
        $post = Post::findOrFail($id);
        $borrar = public_path('/img/post/'.$post->urlfoto);
        if(file_exists($borrar)){ unlink(realpath($borrar)); }
        $post->delete();
        return redirect('/admin/post');
    }

}
