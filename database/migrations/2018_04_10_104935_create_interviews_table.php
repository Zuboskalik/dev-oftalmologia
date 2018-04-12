<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInterviewsTable extends Migration
{
/**
Справочник «Опрос»
•	Поля в табличной части:
  o	Заголовок опроса
  o	Кнопки
    	Просмотреть
    	Статистика
•	Поля при редактировании
  o	Заголовок опроса* -текст
  o	Текст вопроса* - текст
  o	Вариант ответа* - текст
  o	Кнопки
    	Добавить вопрос
    	Добавить ответ
    	Сохранить
    	Отменить
•	Поля при просмотре статистики
  o	Вопрос
  o	Вариант ответа
  o	Количество отвеченных

*/

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('interviews', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->jsonb('options');
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
        Schema::dropIfExists('interviews');
    }
}
