<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAboutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

     /**
     Справочник «О нас»
     •	Поля в табличной части:
      o	Кнопка «Редактировать»
     •	Поля формы редактирования
       o	Название мед.заведения* - текст
       o	Описание* – текстовый редактор
       o	Изображение – загрузка 1 изображения
       o	Миссия* – текстовый редактор
       o	Ценности*– текстовый редактор
       o	Идеология* – текстовый редактор

     */
    public function up()
    {
        Schema::create('abouts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->text('description');
            $table->string('image')->nullable();
            $table->text('mission');
            $table->text('values');
            $table->text('ideology');
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
        Schema::dropIfExists('abouts');
    }
}
