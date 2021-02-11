<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'auth/v1', 'namespace' => 'V1'], function ($router) {
    $router->post('admin-register', 'UserController@register');
    $router->post('admin-login', 'UserController@login');
});

$router->group(['prefix' => 'admin/v1', 'namespace' => 'V1', 'middleware' => 'auth'], function ($router) {
    $router->get('refresh', 'UserController@refreshToken');
    $router->get('logout', 'UserController@logout');
    $router->get('user-details', 'UserController@userDetails');
    $router->post('create-genre', 'GenreController@createGenre');
    $router->post('add-movie', 'MovieController@createMovie');
    $router->put('update-movie/{id}', 'MovieController@updateMovie');
    $router->delete('delete-movie/{id}', 'MovieController@deleteMovie');
    $router->delete('delete-genre/{id}', 'GenreController@deleteGenre');
});

$router->group(['prefix' => 'user/v1', 'namespace' => 'V1'], function ($router) {
    $router->get('movie-list', 'MovieController@getMovieList');
    $router->get('genre-list', 'GenreController@getGenreList');
});


