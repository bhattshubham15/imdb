<?php

namespace App\Http\Controllers\V1;

use App\Http\Controllers\Controller;
use App\Models\MovieModel;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class MovieController extends Controller
{

    /**
     * Create movie
     */
    public function createMovie(Request $request)
    {
        try {
            $this->validate($request, [
                'name' => 'required|string|max:80',
                'director' => 'required|string|max:80',
                'popularity' => 'required|numeric',
                'imdb_score' => 'required|numeric',
                'genre_id' => 'required|string',
            ]);
            MovieModel::createMovie($request->name, $request->director, $request->popularity, $request->imdb_score, $request->genre_id);
            $response = $this->apiSuccess('movie created successfully');
        } catch (ValidationException $valException) {
            $response = $this->buildFailedValidationResponse($request, $valException->errors(), true);
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR');
        }
        return $response;
    }
    /**
     * Update movie
     */
    public function updateMovie(Request $request, $id)
    {
        try {
            $this->validate($request, [
                'director' => 'string|max:80',
                'popularity' => 'numeric',
                'imdb_score' => 'numeric',
                'genre_id' => 'string',
            ]);
            $movieDetails = MovieModel::find($id);
            $movieDetails->director = $request->director;
            $movieDetails->popularity = $request->popularity ?? '';
            $movieDetails->imdb_score = $request->imdb_score;
            $movieDetails->genre_id = $request->genre_id;
            $movieDetails->created_on = date('Y-m-d');
            $movieDetails->save();
            $response = $this->apiSuccess('movie updated successfully');
        } catch (ValidationException $valException) {
            $response = $this->buildFailedValidationResponse($request, $valException->errors(), true);
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
    }
    /**
     * Delete movie
     */
    public function deleteMovie($id)
    {
        $movieDetails = MovieModel::find($id);
        $movieDetails->delete();
        return $this->apiSuccess('movie deleted successfully');
    }
    /**
     * Get movie list
     */
    public function getMovieList(Request $request)
    {
        try {
            $this->validate($request, [
                'genre_name' => 'array',
                'genre_name.*' => 'string',
                'search_text' => 'string',
            ]);
            $getMovies = MovieModel::getMovies($request);
            $response = $this->apiSuccess('fetched', $getMovies);
        } catch (ValidationException $valException) {
            $response = $this->buildFailedValidationResponse($request, $valException->errors(), true);
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
    }
}
