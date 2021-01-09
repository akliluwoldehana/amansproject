<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class KiflTeacher extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kifl_teacher', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('teacher_id')->unsigned();
            $table->foreign('teacher_id')->references('id')->on('teachers');

            $table->foreign('kifl_id')->references('id')->on('kifls');
            $table->bigInteger('kifl_id')->unsigned();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kifl_teacher');
    }
}
