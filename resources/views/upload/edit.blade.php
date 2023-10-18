@extends('layouts.app')
@section('title', 'Mettre à jour un document')
@section('content')

<h1> @lang('lang.text_edit_document')</h1>

<form method="post" enctype="multipart/form-data">
    @method('put')
    @csrf
    <div class="card-body">
    <label>@lang('lang.text_document_title') :</label>
        <input type="text" name="fileName"  class="form-control" value="{{ $file->fileName }}" required><br>
        <input type="file" name="fileItem"  accept=".pdf,.zip,.doc" class="form-control" required> <br> <br>
    </div>
    <div class="card-footer">
        <input type="submit" class="btn btn-info" value="@lang('lang.text_edit_document_button')">
    </div>
</form>


@endsection

