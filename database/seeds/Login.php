<?php

use App\Models\User;
use Illuminate\Database\Seeder;

class Login extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'id' => 1,
            'firstname' => 'Shubham',
            'lastname' => 'Bhatt',
            'mobile_no' => '8888888888',
            'password' => '$2y$10$0W23DljFhwzILkFObHWe.e/6HkKnQhFIX9LHiPBk5.sPE/V1uosRm'
        ]);
        User::create([
            'id' => 2,
            'firstname' => 'Rohit',
            'lastname' => 'Singh',
            'mobile_no' => '9999999999',
            'password' => '$2y$10$sjD2OcKI.fQonyNb0KsKtOOSwi/AvS6/qMO.8t32tLkchC0IVIsVa'
        ]);
    }
}
