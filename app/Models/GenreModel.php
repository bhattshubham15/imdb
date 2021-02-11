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
    public static function createGenre($id, $gname)
    {
        return DB::insert('insert into genre_lkup (id, genre_name) values (?,?)', [$id, $gname]);
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
    /**
     * Get max id
     */
    public static function getMaxId()
    {
        return DB::table('genre_lkup')->latest('id')->first();
    }
}
