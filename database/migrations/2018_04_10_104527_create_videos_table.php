<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVideosTable extends Migration
{
/**
Справочник «Видео»
•	Поля в табличной части:
  o	Заголовок
  o	URL
  o	Кнопка «Скопировать ссылку»
•	Поля при добавлении/редактировании:
  o	Заголовок* - текст
  o	URL* - текст
  o	Видео * – загрузка 1 видео
•	Логика функционирования
  o	При нажатии на кнопку «Скопировать ссылку» - она выделится другим цветом
*/


    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('videos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('URL');
            $table->string('video');
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
        Schema::dropIfExists('videos');
    }
}
