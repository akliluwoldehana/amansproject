<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttendancesTable extends Migration
{
    public function up()
    {
        Schema::create('attendances', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->boolean('present')->default(true);
            $table->date('date');

            $table->bigInteger('student_id')->unsigned();
            $table->foreign('student_id')->references('id')->on('students');
            $table->bigInteger('kifl_id')->unsigned();
            $table->foreign('kifl_id')->references('id')->on('kifls');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('attendances');
    }
}
