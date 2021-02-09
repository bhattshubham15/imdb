<?php

namespace App\Http\Middleware;

use App\Http\AppHelpers\ResponseHelper;
use Closure;
use Illuminate\Contracts\Auth\Factory as Auth;
use Tymon\JWTAuth\JWTAuth;

class Authenticate
{
    /**
     * The authentication guard factory instance.
     *
     * @var \Illuminate\Contracts\Auth\Factory
     */
    protected $auth;
    protected $jwt;
    /**
     * Create a new middleware instance.
     *
     * @param  \Illuminate\Contracts\Auth\Factory  $auth
     * @return void
     */
    public function __construct(JWTAuth $jwt, Auth $auth)
    {
        $this->jwt = $jwt;
        $this->auth = $auth;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        try {
            if (!$this->jwt->setToken($this->jwt->getToken())->authenticate()) {
                $response = ResponseHelper::error('UNAUTHORISED', ['Unauthorize']);
            }
        } catch (\Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
            $response = ResponseHelper::error('UNAUTHORISED', ['Token Expired']);
        } catch (\Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
            $response = ResponseHelper::error('UNAUTHORISED', ['Invalid Token']);
        } catch (\Tymon\JWTAuth\Exceptions\JWTException $e) {
            $response = ResponseHelper::error('UNAUTHORISED', ['Jwt Exception Occured']);
        }
        if (!empty($response)) {
            return $response;
        }

        return $next($request);
    }
}
