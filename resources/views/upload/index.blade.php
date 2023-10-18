@extends('layouts.app')
@section('title', 'Répertoire de documents')
@section('content')

<h1>@lang('lang.text_welcome_upload')</h1>

<div class="row">
    <div class="col-md-8">
    </div>
    <div class="col-md-4">
        <a href="{{ route('upload.create') }}" class="btn btn-primary">@lang('lang.text_add_documents')</a>
    </div>
   </div>
<div class="card">
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>@lang('lang.text_document_title')</th>
                    <th>@lang('lang.text_document_author')</th>
                    <th>@lang('lang.text_document_date_creation')</th>
                </tr>
            </thead>
            <tbody>
                @foreach($fileUploads as $fileUpload)
                <tr>
                    <td>{{ $fileUpload->id }}</td>
                    <td><a href="{{ route('upload.show', $fileUpload->id) }}">{{ $fileUpload->fileName }}</a></td>
                    <td>{{ $fileUpload->fileHasUser->name }}</td>
                    <td>{{ $fileUpload->created_at->format('Y-m-d') }} à {!! $fileUpload->created_at->format('H:i:s') !!}</td>
                    
                </tr>
                @endforeach
            </tbody>
        </table>
       {{ $fileUploads }} 
    </div>
</div>
@endsection