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
    public static function createMovie($name, $director, $popularity, $imdb_score, $genre_id)
    {
        return DB::insert('insert into movie_details (name,director,popularity,imdb_score,genre_id) values (?,?,?,?,?)', [$name, $director, $popularity, $imdb_score, $genre_id]);
    }
    /**
     * list the movies
     */
    public static function getMovies($request)
    {
        $result = DB::table('movie_details')
            ->select('movie_details.id', 'name', 'director', 'popularity', 'imdb_score', 'genre_id', 'movie_details.created_on', 'movie_details.genre_id')
            ->orderByDesc('movie_details.popularity');
        if (!empty($request->genre_name)) {
            foreach ($request->genre_name as $val) {
                $result->orWhereJsonContains('movie_details.genre_id', [$val]);
            }
        }
        if (!empty($request->search_text)) {
            $result = $result->where('name', 'LIKE', '%' . $request->search_text . '%')
                ->orWhere('director', 'LIKE', '%' . $request->search_text . '%');

        }
        return $result->paginate(10);
    }
}
