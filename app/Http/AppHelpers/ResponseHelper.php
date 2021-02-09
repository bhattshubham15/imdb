<?php

namespace App\Http\AppHelpers;

class ResponseHelper
{
    /**
     * Return json error response
     *
     * Saurabh Suman <saurabh.suman@kelltontech.com>
     * Created on 2020-05-30
     *
     * @return JSON Response
     */
    public static function error($code, $otherData = [])
    {
        switch ($code) {
            case 'BAD_REQUEST':
                $statusCode = 400;
                $message = 'Bad request';
                break;

            case 'INVALID_TOKEN':
                $statusCode = 401;
                $message = 'Invalid token';
                break;

            case 'UNAUTHORISED':
                $statusCode = 401;
                $message = 'Unauthorised';
                break;

            case 'VALIDATION_ERROR':
                $statusCode = 422;
                $message = 'Validation error';
                break;

            case 'API_ERROR':
                $statusCode = 500;
                $message = 'Api error';
                break;

            default:
                $statusCode = 401;
                $message = $code;
                break;
        }

        return response()->json(array_merge([
            'status' => $statusCode,
            'message' => $message,
        ], ['data' => $otherData]), $statusCode);
    }

    /**
     * Return json success response
     *
     * Saurabh Suman <saurabh.suman@kelltontech.com>
     * Created on 2020-05-30
     *
     * @return JSON Response
     */
    public static function success($message, $data = [])
    {
        return response()->json(array_merge([
            'status' => 200,
            'message' => $message,
        ], ['data' => $data]), 200);
    }
}
