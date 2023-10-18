<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\BlogPostController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\LocalizationController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/etudiant', [EtudiantController::class, 'index'])->name('etudiant.index');

Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');

Route::get('/etudiant-create', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/etudiant-create', [EtudiantController::class, 'store']);

Route::get('/etudiant-edit/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/etudiant-edit/{etudiant}', [EtudiantController::class, 'update']);

Route::delete('/etudiant-edit/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');

Route::get('/registration', [CustomAuthController::class, 'create'])->name('user.create');
Route::post('/registration', [CustomAuthController::class, 'store']);
Route::get('/login', [CustomAuthController::class, 'index'])->name('login');
Route::post('/login', [CustomAuthController::class, 'authentication']);
Route::get('/logout', [CustomAuthController::class, 'logout'])->name('logout');

Route::get('/user-list', [CustomAuthController::class, 'userList'])->name('user.list');

Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang'); 

Route::get('/blog', [BlogPostController::class, 'index'])->name('blog.index')->middleware(('auth'));
Route::get('/blog/{blogPost}', [BlogPostController::class, 'show'])->name('blog.show')->middleware(('auth'));
Route::get('/blog-create', [BlogPostController::class, 'create'])->name('blog.create')->middleware(('auth'));
Route::post('/blog-create', [BlogPostController::class, 'store']);
Route::get('/blog-edit/{blogPost}', [BlogPostController::class, 'edit'])->name('blog.edit');
Route::put('/blog-edit/{blogPost}', [BlogPostController::class, 'update']);
Route::delete('/blog-edit/{blogPost}', [BlogPostController::class, 'destroy'])->name('blog.delete');

Route::get('upload', [UploadController::class, 'index'])->name('upload.index');
Route::get('/upload-create', [UploadController::class, 'create'])->name('upload.create');
Route::post('upload-create', [UploadController::class, 'store'])->name('upload.store');
Route::get('/upload/{file}', [UploadController::class, 'show'])->name('upload.show');
Route::get('/upload-edit/{file}', [UploadController::class, 'edit'])->name('upload.edit');
Route::put('/upload-edit/{file}', [UploadController::class, 'update']);
Route::delete('/upload-edit/{file}', [UploadController::class, 'destroy'])->name('upload.delete');