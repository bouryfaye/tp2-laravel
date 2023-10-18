@extends('layouts.app')
@section('title', 'Liste des utilisateurs')
@section('content')
<hr>
    <div class="row">
        <div class="col-12 pt-2">
                
        <div class="card">
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                    <tr>
                        <td>{{ $user->id}}</td>
                        <td>{{ $user->name}}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        {{ $users }}
    </div>
</div>

@endsection