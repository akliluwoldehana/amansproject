<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('results', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->char('conduct', 5)->nullable();
            $table->integer('test_1')->nullable();
            $table->integer('test_2')->nullable();
            $table->integer('assignment_1')->nullable();
            $table->integer('assignment_2')->nullable();
            $table->integer('mid')->nullable();
            $table->integer('final')->nullable();


            $table->bigInteger('kifl_id')->unsigned();
            $table->foreign('kifl_id')->references('id')->on('kifls');

            $table->bigInteger('student_id')->unsigned();
            $table->foreign('student_id')->references('id')->on('students');

            $table->bigInteger('subject_id')->unsigned();
            $table->foreign('subject_id')->references('id')->on('subjects');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('results');
    }
}
