@extends('layouts.app')
@section('title', 'Ajouter un étudiant')
@section('content')

        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-one">
                @lang('lang.text_add_student')
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                    @csrf
                        <div class="card-body">   
                                <div class="control-grup col-12">
                                    <label for="nom">@lang('lang.text_name')</label>
                                    <input type="text" id="nom" name="nom" class="form-control" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="adresse">@lang('lang.text_address')</label>
                                    <input type="text" id="adresse" name="adresse" class="form-control" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="phone">@lang('lang.text_phone')</label>
                                    <input type="number" id="phone" name="phone" class="form-control" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="email">@lang('lang.text_mail')</label>
                                    <input type="email" id="email" name="email" class="form-control" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="dateNaissance">@lang('lang.text_date_birth')</label>
                                    <input type="date" id="dateNaissance" name="dateNaissance" class="form-control" required>
                                </div>

                                <label>@lang('lang.text_city') :</label>
                                <select name="ville_id" required>
                                <option value="">@lang('lang.text_pick_a_city') :</option>
                                @forelse($villes as $ville)
                                <option value="{{ $ville->id }}">{{ $ville->nom }}</option>
                                @empty
                                <option value="{{ $ville->id }}">Aucune ville</option>
                                @endforelse
                                </select>
                             
                        </div>
                        <div class="card-footer">
                            <input type="submit" class="btn btn-success" value="@lang('lang.text_add_student_button')">
                        </div>
                    </form>
                </div>
            </div>
        </div>
@endsection

