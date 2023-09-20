@extends('layouts.app')
@section('title', 'Ajouter un étudiant')
@section('content')

        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-one">
                    Ajouter un étudiant
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                    @csrf
                        <div class="card-header">
                            Formulaire
                        </div>
                        <div class="card-body">   
                                <div class="control-grup col-12">
                                    <label for="nom">Nom</label>
                                    <input type="text" id="nom" name="nom" class="form-control">
                                </div>
                                <div class="control-grup col-12">
                                    <label for="adresse">Adresse</label>
                                    <input type="text" id="adresse" name="adresse" class="form-control">
                                </div>
                                <div class="control-grup col-12">
                                    <label for="phone">Phone</label>
                                    <input type="number" id="phone" name="phone" class="form-control">
                                </div>
                                <div class="control-grup col-12">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" name="email" class="form-control">
                                </div>
                                <div class="control-grup col-12">
                                    <label for="dateNaissance">Date de naissance</label>
                                    <input type="date" id="dateNaissance" name="dateNaissance" class="form-control">
                                </div>

                                <label>Ville :</label>
                                <select name="ville_id">
                                <option value="">Sélectionnez la Ville :</option>
                                @forelse($villes as $ville)
                                <option value="{{ $ville->id }}">{{ $ville->nom }}</option>
                                @empty
                                <option value="{{ $ville->id }}">Aucune ville</option>
                                @endforelse
                                </select>
                             
                        </div>
                        <div class="card-footer">
                            <input type="submit" class="btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
        </div>
@endsection

