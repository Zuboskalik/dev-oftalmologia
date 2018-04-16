<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

     /**
         Справочник «Отзывы»
    •	Поля в табличной части:
      o	ФИО
      o	Отзыв
      o	Галочка – есть ответ/ нет ответа
      o	Галочка – Размещено на сайте / Не размещено на сайте
      o	Кнопка «Ответить на отзыв»
    •	Поля при просмотре отзыва:
      o	ФИО*
      o	Телефон/эл.адрес
      o	Отзыв*
      o	Ответ на отзыв – текстовый редактор
      o	Переключатель «Разместить на сайте»
     */

    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('phone')->nullable();
            $table->string('comment');
            $table->boolean('answered');
            $table->boolean('published');
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
        Schema::dropIfExists('comments');
    }
}
