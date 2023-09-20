@extends('layouts.app')
@section('title', 'Liste des étudiants')
@section('content')
   <hr>
   <div class="row">
    <div class="col-md-8">
        <p>Bienvenue !</p>
    </div>
    <div class="col-md-4">
        <a href="{{ route('etudiant.create') }}" class="btn btn-primary">Ajouter</a>
    </div>
   </div>
   <div class="row mt-3">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Liste des étudiants</h4>
            </div>
            <div class="card-body">
                <ul>
                    @forelse($posts as $post)
                    <li style="text-align: left"><a href="{{ route('etudiant.show', $post->id) }}">Id : {{ $post->id }} - Nom : {{ $post->nom }}</a></li>
                    @empty
                    <li class="text-danger">Aucun étudiant</li>
                    @endforelse
                </ul>
            </div>
        </div>
    </div>
   </div>
@endsection