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
            ->leftjoin("genre_lkup", DB::raw("FIND_IN_SET(genre_lkup.id::varchar(100),movie_details.genre_id::varchar(100))"), ">", DB::raw("'0'"))
            ->select('movie_details.id', 'name', 'director', 'popularity', 'imdb_score', 'genre_id', 'movie_details.created_on', DB::raw("GROUP_CONCAT(genre_lkup.genre_name) as genre_name"))
            ->groupBy('movie_details.id')
            ->orderByDesc('movie_details.popularity');
        if (!empty($request->genre_id)) {
            $result = $result->whereIn('genre_lkup.id', $request->genre_id);
        }
        if (!empty($request->search_text)) {
            $result = $result->where('name', 'LIKE', '%' . $request->search_text . '%')
                ->orWhere('director', 'LIKE', '%' . $request->search_text . '%');

        }
        return $result->paginate(10);
    }
}
