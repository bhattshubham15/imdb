<?php

use App\Models\GenreModel;
use Illuminate\Database\Seeder;

class GenreLkup extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        GenreModel::create([
            'id' => 1,
            'genre_name' => 'Adventure'
        ]);
        GenreModel::create([
            'id' => 2,
            'genre_name' => 'Family'
        ]);
        GenreModel::create([
            'id' => 3,
            'genre_name' => 'Fantasy'
        ]);
        GenreModel::create([
            'id' => 4,
            'genre_name' => 'Musical'
        ]);
        GenreModel::create([
            'id' => 5,
            'genre_name' => 'Sci-Fi'
        ]);
        GenreModel::create([
            'id' => 6,
            'genre_name' => 'Action'
        ]);
        GenreModel::create([
            'id' => 7,
            'genre_name' => 'Drama'
        ]);
        GenreModel::create([
            'id' => 8,
            'genre_name' => 'War'
        ]);
        GenreModel::create([
            'id' => 9,
            'genre_name' => 'Horror'
        ]);
        GenreModel::create([
            'id' => 10,
            'genre_name' => 'Mystery'
        ]);
        GenreModel::create([
            'id' => 12,
            'genre_name' => 'Thriller'
        ]);
        GenreModel::create([
            'id' => 13,
            'genre_name' => 'Romance'
        ]);
        GenreModel::create([
            'id' => 14,
            'genre_name' => 'Animation'
        ]);
        GenreModel::create([
            'id' => 15,
            'genre_name' => 'History'
        ]);
        GenreModel::create([
            'id' => 16,
            'genre_name' => 'Western'
        ]);
        GenreModel::create([
            'id' => 17,
            'genre_name' => 'Crime'
        ]);
    }
}
