<?php

namespace App\Http\Controllers;

use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$fileUpload = File::all();

        //return view('upload.index', ['fileUploads' => $fileUpload]);

        if (Auth::check()) {
            $fileUploads = File::Select()
            ->paginate(5); 
            return view('upload.index', ['fileUploads' => $fileUploads]);
        } else {
            return redirect(route('login'));
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newFile = File::create([
            'fileName' => $request->fileName,
            'user_id' => Auth::user()->id
        ]);

        $request->file('fileItem')->store('studentFiles');

        return redirect(route('upload.index'))->withSuccess(trans('lang.text_blog_insert'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('upload.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\File  $file
     * @return \Illuminate\Http\Response
     */
    public function show(File $file)
    {
        return view('upload.show', ['file' => $file]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\File  $file
     * @return \Illuminate\Http\Response
     */
    public function edit(File $file)
    {
        if(Auth::user()->id === $file->user_id) {
            return view('upload.edit', ['file' => $file]);
        } else {
            return redirect(route('upload.index', $file->id))->withSuccess('Accès refusé');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\File  $file
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, File $file)
    {
        $file->update([
            'fileName'      => $request->fileName
        ]);
        
        return redirect(route('upload.show', $file->id))->withSuccess('Donnée mise à jour');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\File  $file
     * @return \Illuminate\Http\Response
     */
    public function destroy(File $file)
    {
        if(Auth::user()->id === $file->user_id) {
        $file->delete();

        return redirect(route('upload.index'))->withSuccess("L'enregistrement de ce document a bien été supprimé !");
        } else {
            return redirect(route('upload.index', $file->id))->withSuccess('Accès refusé');
        }
    }
}
