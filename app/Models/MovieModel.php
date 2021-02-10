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
        return DB::select(DB::raw('select m.name,m.genre_id,m.popularity,m.director,m.imdb_score,string_agg(genre_name,',') genre_name from movie_details m inner join genre_lkup g on g.id = any(string_to_array(genre_id, ',')::int[]) group by m.id order by m.popularity desc'));
        // if (!empty($request->genre_id)) {
        //     $result = $result->whereIn('genre_lkup.id', $request->genre_id);
        // }
        // if (!empty($request->search_text)) {
        //     $result = $result->where('name', 'LIKE', '%' . $request->search_text . '%')
        //         ->orWhere('director', 'LIKE', '%' . $request->search_text . '%');

        // }
        // return $result->paginate(10);
    }
}
