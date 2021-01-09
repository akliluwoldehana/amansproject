<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKiflsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kifls', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('year');
            $table->char('section', 5);

            $table->integer('capacity')->unsigned();

            $table->bigInteger('grade_id')->unsigned();
            $table->foreign('grade_id')->references('id')->on('grades');

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
        Schema::dropIfExists('kifls');
    }
}
