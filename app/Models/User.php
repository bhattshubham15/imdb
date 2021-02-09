<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'login';

    protected $fillable = [
        'firstname',
        'lastname',
        'mobile_no',
        'password',
	];

    public static function saveDetails($fname, $lname, $mob, $pass)
    {
        return DB::insert('insert into login (firstname, lastname, mobile_no, password) values (?, ?, ?, ?)', [$fname, $lname, $mob, $pass]);
    }
    /**
     * Get user details
     */
    public static function getDetails($id)
    {
        return DB::table('login')
            ->select('firstname', 'lastname', 'mobile_no')
            ->where('id', $id)
            ->first();
    }
}
