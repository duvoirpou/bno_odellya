<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('sexe')->nullable()->change();
            $table->string('adresse')->nullable()->change();
            $table->string('tel')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('sexe')->nullable(false)->change();
            $table->string('adresse')->nullable(false)->change();
            $table->string('tel')->nullable(false)->change();
        });
    }
};
