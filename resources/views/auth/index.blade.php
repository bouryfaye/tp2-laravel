@extends('layouts.app')
@section('title', 'Connecter un utilisateur')
@section('content')
<hr>
@if(!$errors->isEmpty())
<ul>
    @foreach($errors->all() as $error)

        <li class="text-danger">{{ $error }}</li>

    @endforeach
</ul>
@endif
<div class="row justify-content-center">
    <div class="col-md-4">
        <div class="card">
            <form method="post">
                @csrf
                <div class="card-header">
                    <h3>@lang('lang.text_login_title')</h3>
                </div>
                <div class="card-body">
                    <div class="control-grup col-12">
                        <label for="email">@lang('lang.text_mail')</label>
                        <input type="email" id="email" name="email" class="form-control" value="{{old('email')}}" required>
                        @if($errors->has('email'))
                        <div class="text-danger mt-2">
                            {{$errors->first('email')}}
                        </div>
                        @endif
                    </div>

                    <div class="control-grup col-12">
                        <label for="password">@lang('lang.text_password')</label>
                        <input type="password" id="password" name="password" class="form-control"required>
                        @if($errors->has('password'))
                        <div class="text-danger mt-2">
                            {{$errors->first('password')}}
                        </div>
                        @endif
                    </div>
                </div>
                <div class="card-footer">
                    <div class="d-grid mx-auto">
                        <input type="submit" class="btn btn-success btn-block" value="@lang('lang.text_login_button')">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection