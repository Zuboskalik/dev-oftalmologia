<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVacantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

     /**
     Справочник «Вакансии»
     •	Поля в табличной части:
       o	Наименование вакансии
       o	Дата публикации
     •	Поля при добавлении вакансии:
       o	Наименование вакансии* - текст
       o	Описание вакансии* - текстовый редактор
       o	З/П - текст
       o	Контактный телефон для обращения - текст
       o	Дата создания вакансии – автоматически сгенерированная дата
       o	Переключатель «Отображать на странице»
     */

    public function up()
    {
        Schema::create('vacants', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->text('description');
            $table->string('payment')->nullable();
            $table->string('phone');
            $table->timestamps();
            $table->boolean('checkbox_show')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vacants');
    }
}
