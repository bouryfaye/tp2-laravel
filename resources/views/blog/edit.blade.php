@extends('layouts.app')
@section('title', 'Mettre a jour')
@section('content')

        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-one">
                    @lang('lang.text_edit_blog')
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form method="post">
                    @method('put')
                    @csrf
                        <div class="card-body">   
                                <div class="control-grup col-12">
                                    <label for="title">@lang('lang.text_blog_title_message')</label>
                                    <input type="text" id="title" name="title" class="form-control" value="{{$blogPost->title}}" required>
                                </div>
                                <div class="control-grup col-12">
                                    <label for="message">@lang('lang.text_blog_message')</label>
                                    <textarea class="form-control" id="message" name="content" required>{{$blogPost->content}}</textarea>
                                </div>
                        </div>
                        <div class="card-footer">
                            <input type="submit" class="btn btn-success" value="@lang('lang.text_edit_blog_button')">
                        </div>
                    </form>
                </div>
            </div>
        </div>
       {{-- <div>
            {{ $abc }}
        </div> --}}
 @endsection