<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
  /**
  Справочник «Новости»
  •	Табличная часть:
    o	Заголовок новости
    o	Дата публикации
    o	Дата создания
  •	Форма добавления/редактирования
    o	Заголовок новости* - текст
    o	Изображение – загрузка 1 изображения
    o	Содержание новости* - текст
    o	Дата публикации* - генерируется автоматически по текущей дате, но можно отредактировать
    o	Дата создания* - генерируется автоматически
    o	Дата редактирования* - генерируется автоматически
    o	SEO title - текст
    o	SEO description - текст
    o	SEO keywords – текст

  */

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('image')->nullable();
            $table->text('content');
            $table->datetime('publish_at');
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
        Schema::dropIfExists('news');
    }
}
