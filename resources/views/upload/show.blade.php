@extends('layouts.app')
@section('title', 'Détails du document')
@section('content')
<hr>
    <div class="row">
        <div class="col-12 pt-2 show">
            <a href="{{ route('upload.index') }}" class="btn btn-outline-primary btn-sm">@lang('lang.text_return')</a>
            <p> @lang('lang.text_document_title') :</p>
            <h4 class="display-4">
                {{ $file->fileName }}
            </h4>
            <hr>
            <p>
            @lang('lang.text_document_created') : {!! $file->created_at->format('Y-m-d') !!} @lang('lang.text_document_created_at') {!! $file->created_at->format('H:i:s') !!}
            </p>
            <p>
                <strong> @lang('lang.text_blog_author'): </strong> {{ $file->fileHasUser->name }}
            </p>
        </div>
    </div>
    <hr>
    <div class="row mb-5">
        <div class="col-6">
            <a href="{{ route('upload.edit', $file->id) }}" class="btn btn-primary">@lang('lang.text_update')</a>
        </div>
        <div class="col-6">
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
            @lang('lang.text_delete')
            </button>
        </div>
    </div>


<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Supprimer</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Voulez-vous vraiment supprimer ce document ? {{ $file->fileName}}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
        <form action="{{route('upload.delete', $file->id)}}" method="post">
                @csrf
                @method('delete')
                <input type="submit" value="Supprimer" class="btn btn-danger">
        </form>
      </div>
    </div>
  </div>
</div>

@endsection


