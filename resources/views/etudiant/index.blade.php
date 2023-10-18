@extends('layouts.app')
@section('title', 'Liste des étudiants')
@section('content')

<div class="row-md-15">
    <div class="col-md-8">
    </div>
    <div class="col-md-4">
        <a href="{{ route('etudiant.create') }}" class="btn btn-primary">@lang('lang.text_add_student_button')</a>
    </div>
</div>
<div class="card">
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>@lang('lang.text_name')</th>
                </tr>
            </thead>
            <tbody>
                @foreach($etudiants as $etudiant)
                <tr>
                    <td>{{ $etudiant->id }}</td>
                    <td><a href="{{ route('etudiant.show', $etudiant->id) }}">{{ $etudiant->nom }}</a></td>
                    
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $etudiants }}
    </div>
</div>


@endsection