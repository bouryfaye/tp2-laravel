@extends('layouts.app')
@section('title', 'Liste des étudiants')
@section('content')
<hr>
    <div class="row">
        <div class="col-12 pt-2 show">
            <a href="{{ route('etudiant.index') }}" class="btn btn-outline-primary btn-sm">Retourner</a>
            <h4 class="display-4 mt-5">
                {{ $etudiant->nom }}
            </h4>
            <hr>
            <p>
                {!! $etudiant->adresse !!}
            </p>
            <p>
                <strong>Ville: </strong> {{ $etudiant->ville_id }} 
            </p>
        </div>
    </div>
    <hr>
    <div class="row mb-5">
        <div class="col-6">
            <a href="{{ route('etudiant.edit', $etudiant->id) }}" class="btn btn-primary">Mettre a jour</a>
        </div>
        <div class="col-6">
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                Supprimer
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
        Voulez-vous vraiment supprimer cet étudiant ? {{ $etudiant->nom}}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
        <form action="{{route('etudiant.delete', $etudiant->id)}}" method="post">
                @csrf
                @method('delete')
                <input type="submit" value="Supprimer" class="btn btn-danger">
        </form>
      </div>
    </div>
  </div>
</div>
@endsection


