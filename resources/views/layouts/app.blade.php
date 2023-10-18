<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="{{asset('css/styles.css')}}" rel="stylesheet" />
    <title>{{ config('app.name' )}} - @yield('title')</title>
</head>
<body>
    <!--Navigation-->
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            @php $locale = session()->get('locale')@endphp
            <a class="navbar-brand" href="#">@lang('lang.text_hello') {{ Auth::user() ? Auth::user()->name : 'Guest'}}</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    @guest
                        <a class="nav-link" href="{{route('user.create')}}">@lang('lang.text_registration')</a>
                        <a class="nav-link" href="{{route('login')}}">@lang('lang.text_login_title')</a>
                    @else
                        <a class="nav-link" href="{{route('user.list')}}">@lang('lang.text_user_list')</a>
                    
                        <a class="nav-link" href="{{route('etudiant.index')}}">@lang('lang.text_students')</a>
                        <a class="nav-link" href="{{route('blog.index')}}">@lang('lang.text_blog')</a>
                        <a class="nav-link" href="{{route('upload.index')}}">@lang('lang.text_documents_list')</a>
                        <a class="nav-link" href="{{route('logout')}}">@lang('lang.text_logout')</a>
                    @endguest

                    <a class="nav-link @if($locale=='en') bg-secondary @endif" href="{{ route('lang', 'en') }}">Anglais</a>
                    <a class="nav-link @if($locale=='fr') bg-secondary @endif" href="{{ route('lang', 'fr') }}">Français</a>

                        
                </div>
            </div>
        </div>
    </nav>
    <!-- Masthead-->
    <header class="masthead">
        <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
            <div class="d-flex justify-content-center">
                <div class="text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 text-center pt-4">
                                <h1 class="display-1">
                                    {{ config('app.name') }}
                                </h1>
                                @if(session('success'))
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        {{session('success')}}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                @endif
                                @yield('content')
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </header>
  
</body>
<!--Bootstrap Javascript CDN-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</html>
