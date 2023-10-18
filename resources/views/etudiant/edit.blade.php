@extends('layouts.app')
@section('title', 'Mettre à jour un étudiant')
@section('content')

        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-one">
                @lang('lang.text_update_title')
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                    @method('put')
                    @csrf
                        <div class="card-body">   
                                <div class="control-grup col-12">
                                    <label for="nom">@lang('lang.text_name')</label>
                                    <input type="text" id="nom" name="nom" class="form-control" value="{{ $etudiant->nom }}" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="adresse">@lang('lang.text_address')</label>
                                    <input type="text" id="adresse" name="adresse" class="form-control" value="{{ $etudiant->adresse }}" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="phone">@lang('lang.text_phone')</label>
                                    <input type="text" id="phone" name="phone" class="form-control" value="{{ $etudiant->phone }}" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="email">@lang('lang.text_mail')</label>
                                    <input type="email" id="email" name="email" class="form-control" value="{{ $etudiant->email }}" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="dateNaissance">@lang('lang.text_date_birth')</label>
                                    <input type="text" id="dateNaissance" name="dateNaissance" class="form-control" value="{{ $etudiant->dateNaissance }}" required>
                                </div>

                                <label>@lang('lang.text_city') :</label>
                                <select name="ville_id" required>
                                <option value="">@lang('lang.text_pick_a_city') :</option>
                                @forelse($villes as $ville)
                                <option value="{{ $ville->id }}" name="{{ $ville->nom }}">{{ $ville->nom }}</option>
                                @empty
                                <option value="{{ $ville->id }}">Aucune ville</option>
                                @endforelse
                                </select>
                             
                        </div>
                        <div class="card-footer">
                            <input type="submit" class="btn btn-success" value="@lang('lang.text_update')">
                        </div>
                    </form>
                </div>
            </div>
        </div>
@endsection

