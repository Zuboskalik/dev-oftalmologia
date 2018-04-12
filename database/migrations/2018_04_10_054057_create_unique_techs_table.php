<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUniqueTechsTable extends Migration
{
  /**
    Справочник «Уникальные технологии»
    •	Поля в табличной части:
    o	Наименование
    o	Вес
    •	Поля (редактировании):
    o	Наименование * - текст
    o	Описание* текст
    o	Изображение – загрузка 1 изображения
    o	Вес - число
    o	SEO title - текст
    o	SEO description - текст
    o	SEO keywords - текст
  */

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('unique_techs', function (Blueprint $table) {
          $table->increments('id');
          $table->string('title');
          $table->string('description');
          $table->string('image')->nullable();
          $table->integer('weight')->nullable();
          $table->string('seo_title')->nullable();
          $table->string('seo_description')->nullable();
          $table->string('seo_keywords')->nullable();
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
        Schema::dropIfExists('unique_techs');
    }
}
