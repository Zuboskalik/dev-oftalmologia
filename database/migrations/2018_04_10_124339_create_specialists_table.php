<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSpecialistsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specialists', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('photo')->nullable();
            $table->string('profession');
            $table->string('contact');
            $table->string('address_priem');
            $table->string('graph_priem');
            $table->string('biography')->nullable();
            $table->integer('divisions_id')->unsigned();
            $table->foreign('divisions_id')->references('id')->on('divisions')->nullable();
            $table->string('weight')->nullable();
            $table->boolean('checkbox_show_about')->nullable();
            $table->timestamps();
            $table->string('seo_title')->nullable();
            $table->string('seo_description')->nullable();
            $table->string('seo_keywords')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('specialists');
    }
}
