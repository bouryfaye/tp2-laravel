<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use App\Models\User;
use Illuminate\Http\Request;
use Faker\Core\Blood;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        if (Auth::check()) {
            $posts = BlogPost::Select()
            ->paginate(10); //5 données par page
            return view('blog.index', ['posts' => $posts]);
        } else {
            return redirect(route('login'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newPost = BlogPost::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => Auth::user()->id
        ]);

        return redirect(route('blog.index'))->withSuccess(trans('lang.text_blog_insert'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {
        return view('blog.show', ['blogPost' => $blogPost]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogPost $blogPost)
    {
        if(Auth::user()->id === $blogPost->user_id) {
            return view('blog.edit', ['blogPost' => $blogPost]); 
        } else {
            return redirect(route('blog.index', $blogPost->id))->withSuccess('Accès refusé');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BlogPost $blogPost)
    {
        if(Auth::user()->id === $blogPost->user_id) {
            $blogPost->update([
            'title' => $request->title,
            'content' => $request->content
            ]);  
            return redirect(route('blog.show', $blogPost->id))->withSuccess('Donnée mise à jour');
        } else {
            return redirect(route('blog.index', $blogPost->id))->withSuccess('Accès refusé !');      
        }

        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        if(Auth::user()->id === $blogPost->user_id) {
            $blogPost->delete();
            return redirect(route('blog.index'))->withSuccess('Donnée effacée');
        } else {
            return redirect(route('blog.index', $blogPost->id))->withSuccess('Accès refusé !'); 
        }
    }

    public function query()
    {
        $query = BlogPost::select()
            ->join('users', 'user_id', '=', 'users.id')
            ->where('blog_posts.id', 1)
            //->orderby('title')
            ->get();

        return $query;

    }

    public function pagination()
    {
        $blogPost = BlogPost::Select()
            ->paginate(5); //5 données par page

        return view('blog.page', ['blogPosts' => $blogPost]);
    }
}
