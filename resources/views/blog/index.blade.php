@extends('layouts.app')
@section('title', 'Liste des articles')
@section('content')

    <hr>
    <h1>@lang('lang.text_list_blog')</h1>
    <div class="row">
        <div class="col-md-8">
            <p class="welcome">@lang('lang.text_welcome_blog') !</p>
        </div>
        <div class="col-md-4">
            <a href="{{ route('blog.create')}}" class='btn btn-primary'>@lang('lang.text_add_blog')</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>@lang('lang.text_blog_title')</th>
                        <th>@lang('lang.text_blog_author')</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($posts as $post)
                    <tr>
                        <td>{{ $post->id }}</td>
                        <td><a href="{{route('blog.show', $post->id)}}">{{ $post->title }}</a></td>   
                        <td>{{ $post->blogHasUser->name }}</td> 
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $posts }}
        </div>
    </div>
@endsection
