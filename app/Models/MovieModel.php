<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MovieModel extends Model
{
    public $table = 'movie_details';
    public $timestamps = false;
    /**
     * create a movie
     */
    public static function createMovie($maxId, $name, $director, $popularity, $imdb_score, $genre_name)
    {
        return DB::insert('insert into movie_details (id,name,director,popularity,imdb_score,genre_name) values (?,?,?,?,?,?)', [$maxId, $name, $director, $popularity, $imdb_score, $genre_name]);
    }
    /**
     * list the movies
     */
    public static function getMovies($request)
    {
        $result = DB::table('movie_details')
            ->select('movie_details.id', 'name', 'director', 'popularity', 'imdb_score', 'genre_name', 'movie_details.created_on', 'movie_details.genre_name')
            ->orderByDesc('movie_details.popularity');
        if (!empty($request->genre_name)) {
            foreach ($request->genre_name as $val) {
                $result->orWhere('movie_details.genre_name', 'LIKE', '%' . $val . '%');
            }
        }
        if (!empty($request->search_text)) {
            $result = $result->where('name', 'LIKE', '%' . $request->search_text . '%')
                ->orWhere('director', 'LIKE', '%' . $request->search_text . '%');

        }
        return $result->paginate(15);
    }
    /**
     * Get max id
     */
    public static function getMaxId()
    {
        return DB::table('movie_details')->latest('id')->first();
    }
    /**
     * Get vie of movie
     */
    public static function getView($id)
    {
        return DB::table('movie_details')
            ->select('id', 'name', 'director', 'popularity', 'imdb_score', 'genre_name', 'created_on')
            ->where('id', $id)
            ->first();
    }
}
