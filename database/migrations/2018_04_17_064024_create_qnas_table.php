<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQnasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    /**
    Справочник «Вопрос-ответ»
    •	Поля в табличной части:
      o	ФИО
      o	Вопрос
      o	Кнопка «Ответить на вопрос»
      o	Отметка «Отвечено/не отвечено»
    •	Поля при редактировании:
      o	ФИО
      o	Телефон/эл.адрес
      o	Вопрос
      o	Поле для ответа на вопрос* - текстовый редактор
      o	Переключатель «Разместить на сайте»

     */
    public function up()
    {
        Schema::create('qnas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('phone')->nullable();
            $table->string('title');
            $table->text('answer')->nullable();
            $table->boolean('published')->nullable();
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
        Schema::dropIfExists('qnas');
    }
}
