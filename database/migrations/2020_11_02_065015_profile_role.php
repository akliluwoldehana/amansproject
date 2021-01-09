<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ProfileRole extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profile_role', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('profile_id')->unsigned();
            $table->bigInteger('role_id')->unsigned();

            $table->foreign('role_id')->references('id')->on('roles');
            $table->foreign('profile_id')->references('id')->on('profiles');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profile_role');
    }
}
