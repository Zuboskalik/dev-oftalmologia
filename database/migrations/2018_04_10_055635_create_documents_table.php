<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentsTable extends Migration
{
  /**
  •	Поля в табличной части:
  o	Наименование* - текст
  o	Заголовок URL* - текст
  o	Группа – список групп
  o	Прикрепленный документ* - 1 загруженный документ
  o	Флажок «Отображать на стр. «О нас»»
  */

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('documents', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('header_URL');
            $table->integer('document_groups_id')->unsigned();
            $table->foreign('document_groups_id')->references('id')->on('document_groups')->nullable();
            $table->string('attach');
            $table->boolean('checkbox_show_about');
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
        Schema::dropIfExists('documents');
    }
}
