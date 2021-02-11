<?php

namespace App\Http\Controllers\V1;

use App\Http\Controllers\Controller;
use App\Models\GenreModel;
use Illuminate\Http\Request;

class GenreController extends Controller
{

    /**
     * Create genres
     */
    public function createGenre(Request $request)
    {
        try {
            $this->validate($request, [
                'genre_name' => 'required|string|max:80',
            ]);
            $maxId = GenreModel::getMaxId();
            $maxId = $maxId ? $maxId->id + 1 : 1;
            GenreModel::createGenre($maxId, $request->genre_name);
            $response = $this->apiSuccess('genre created successfully');
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR');
        }
        return $response;
    }
    /**
     * Delete movie
     */
    public function deleteGenre($id)
    {
        try {
            $movieDetails = GenreModel::find($id);
            $movieDetails->delete();
            $response = $this->apiSuccess('genre deleted successfully');
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
    }
    /**
     * Get genre list
     */
    public function getGenreList()
    {
        try {
            $response = $this->apiSuccess('fetched', GenreModel::getGenre());
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
    }

}
