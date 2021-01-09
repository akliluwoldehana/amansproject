<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('fullName')->default('NO name');
            $table->integer('age');
            $table->char('gender', 10);
            $table->date('birthDate')->nullable();
            $table->string('birthPlace')->nullable();
            $table->string('address')->nullable();
            $table->string('fatherFullName')->nullable();
            $table->string('fatherAddress')->nullable();
            $table->string('fatherPhone')->nullable();

            $table->string('motherFullName')->nullable();
            $table->string('motherAddress')->nullable();
            $table->string('motherPhone')->nullable();

//            $table->string('registeredBy')->nullable();
            // TODO: Not Migrated

            $table->bigInteger('kifl_id')->unsigned();
            $table->foreign('kifl_id')->references('id')->on('kifls');

            $table->bigInteger('profile_id')->unsigned();
            $table->foreign('profile_id')->references('id')->on('profiles');

            $table->bigInteger('parent_id')->unsigned();
            $table->foreign('parent_id')->references('id')->on('profiles');


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
        Schema::dropIfExists('students');
    }
}
