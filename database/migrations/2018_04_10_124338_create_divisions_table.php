<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDivisionsTable extends Migration
{
  /**
  Справочник «Подразделения»
  •	Поля в табличной части:
    o	Название
    o	Вес
  •	Поля (при редактировании)
    o	Название* - текст
    o	Информация об отделении* - текстовый редактор
    o	Фотогалерея – загрузка нескольких изображений
    o	Руководитель отделения* - список сотрудников
    o	Вес - число
    o	SEO title текст
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
        Schema::create('divisions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->text('information');
            $table->text('photo')->nullable();
            $table->integer('chief_id')->unsigned();
            //$table->foreign('chief_id')->references('id')->on('specialists')->nullable();//уточнить
            $table->timestamps();
            $table->string('weight')->nullable();
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
        Schema::dropIfExists('divisions');
    }
}
