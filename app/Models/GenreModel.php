<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class GenreModel extends Model
{
    public $table = "genre_lkup";
    public $timestamps = false;
    /**
     * Create genre
     */
    public static function createGenre($gname)
    {
        return DB::insert('insert into genre_lkup (genre_name) values (?)', [$gname]);
    }
    /**
     * Get genre
     */
    public static function getGenre()
    {
        return DB::table('genre_lkup')
            ->select('id', 'genre_name', 'created_on')
            ->get();
    }
}
