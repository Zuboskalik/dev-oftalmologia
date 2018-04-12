<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocumentGroupsTable extends Migration
{
  /**
  Справочник «Группа документов»
  •	Поля:
  o	Наименование группы* - текст
  */

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document_groups', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
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
        Schema::dropIfExists('document_groups');
    }
}
