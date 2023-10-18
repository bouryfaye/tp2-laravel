@extends('layouts.app')
@section('title', 'Ajouter un document')
@section('content')

<h1> @lang('lang.text_upload_document')</h1>

<form method="post" enctype="multipart/form-data">
    @csrf
    <div class="card-body">
        <label> @lang('lang.text_document_title') :</label>
        <input type="text" name="fileName"  class="form-control" required><br>
        <input type="file" name="fileItem"  accept=".pdf,.zip,.doc" class="form-control" required> <br> 
    </div>
    <div class="card-footer">
        <input type="submit" class="btn btn-info" value="@lang('lang.text_upload_document_button')">
    </div>
</form>

@endsection