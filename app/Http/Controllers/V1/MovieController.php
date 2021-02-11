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
            ]);
            $this->validateRequest($request);
            $maxId = MovieModel::getMaxId();
            MovieModel::createMovie($maxId+1, $request->name, $request->director, $request->popularity, $request->imdb_score, json_encode($request->genre_name));
            $response = $this->apiSuccess('movie added successfully');
        } catch (ValidationException $valException) {
            $response = $this->buildFailedValidationResponse($request, $valException->errors(), true);
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
    }
    /**
     * Update movie
     */
    public function updateMovie(Request $request, $id)
    {
        try {
            $this->validateRequest($request);
            $movieDetails = MovieModel::find($id);
            $movieDetails->director = $request->director;
            $movieDetails->popularity = $request->popularity;
            $movieDetails->imdb_score = $request->imdb_score;
            $movieDetails->genre_name = $request->genre_name;
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
        try {
            $movieDetails = MovieModel::find($id);
            $movieDetails->delete();
            $response = $this->apiSuccess('movie deleted successfully');
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR', $e->getMessage());
        }
        return $response;
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
    /**
     * Validate Request
     */
    public function validateRequest($request)
    {
        $this->validate($request, [
            'director' => 'string|max:80',
            'popularity' => 'required|numeric',
            'imdb_score' => 'required|numeric',
            'genre_name' => 'required|array|max:80',
            'genre_name.*' => 'string',
        ]);
    }
}
