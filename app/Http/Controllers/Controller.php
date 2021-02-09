<?php

namespace App\Http\Controllers;

use App\Http\AppHelpers\ResponseHelper;
use Laravel\Lumen\Routing\Controller as BaseController;

class Controller extends BaseController
{
    /**
     * Api success
     */
    public function apiSuccess($message, $data = [])
    {
        return ResponseHelper::success($message, $data);
    }
    /**
     * Api error
     */
    public function apiError($message, $data = [])
    {
        return ResponseHelper::error($message, $data);
    }
    /**
     * Formats API Validation error
     */
    public function buildFailedValidationResponse($request, array $errors, $oneErrorPerField = true)
    {
        if ($oneErrorPerField) {
            $newErrors = [];
            foreach ($errors as $key => $value) {
                if (is_array($value)) {
                    $newErrors[$key] = $value[0];
                }
            }
            $errors = $newErrors;
        }
        return ResponseHelper::error('VALIDATION_ERROR', ['validation_errors' => $errors]);
    }
}
