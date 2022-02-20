<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppartenirsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appartenirs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('categorie2_id')->unsigned()->nullable();
            $table->foreign('categorie2_id')->references('id')
                                            ->on('categories')
                                            ->onDelete('cascade');
            $table->unsignedBigInteger('categorie1_id')->unsigned()->nullable();
            $table->foreign('categorie1_id')->references('id')
                                            ->on('categories')
                                            ;
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
        Schema::dropIfExists('appartenirs');
    }
}
