<?php

namespace App\Http\Controllers\V1;

use App\Http\Controllers\Controller;
use App\Models\AuthModel;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{

    /**
     * Register the credentials in application
     */
    public function register(Request $request)
    {
        //validate incoming request
        $this->validate($request, [
            'firstname' => 'required',
            'lastname' => 'required',
            'mobile_no' => 'required',
            'password' => 'required|confirmed',
        ]);

        try {
            $user = User::saveDetails($request->input('firstname'), $request->input('lastname'), $request->input('mobile_no'), app('hash')->make($request->password));
            //return successful response
            return response()->json(['user' => $user, 'message' => 'CREATED'], 201);

        } catch (\Exception $e) {
            //return error message
            return response()->json(['message' => 'User Registration Failed!'], 409);
        }

    }
    /**
     * Login and create the token
     */
    public function login(Request $request)
    {
        try {
            $token = AuthModel::login(request(['mobile_no', 'password']));
            if (!$token) {
                //return failure
                return response()->json(['message' => 'Token Not Created', 'request' => request(['mobile_no', 'password'])]);
            } else {
                //return successful response
                return response()->json(['token' => $token, 'expiration_time' => auth()->factory()->getTTL() * 60, 'token_type' => 'bearer'], 200);
            }

        } catch (\Exception $e) {
            //return error message
            return response()->json(['message' => 'User Registration Failed!'], 409);
        }
    }
    /**
     * Refresh the token
     */
    public function refreshToken()
    {
        $token = auth()->refresh();
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
        ]);
    }
    /**
     * Logout
     */
    public function logout()
    {
        $status = auth()->logout(true);
        if ($status) {
            $response = response()->json(['logout successfully']);
        } else {
            $response = response()->json(['logout failed']);
        }
        return $response;
    }
    /**
     * Get user details
     */
    public function userDetails(Request $request)
    {
        try {
            $user = auth()->userOrFail();
            $details = User::getDetails($user['id']);
            $response = $this->apiSuccess('user found', $details);
        } catch (\Exception $e) {
            $response = $this->apiError('API_ERROR');
        }
        return $response;
    }
}
