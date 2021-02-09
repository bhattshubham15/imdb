<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ImdbTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $script = getcwd() . '/database/migrations/imdb_tables.sql';
        $command = "cat " . $script . " | mysql -h " . env('DB_HOST') . " -u " . env('DB_USERNAME') . " -p" . env('DB_PASSWORD') . " " . env('DB_DATABASE');
        exec($command);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
