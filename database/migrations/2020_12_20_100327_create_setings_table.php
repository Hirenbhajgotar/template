<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSetingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('setings', function (Blueprint $table) {
            $table->id();
            $table->string('site_name')->nullable();
            $table->integer('mobile_no')->nullable();
            $table->string('email')->nullable();
            $table->string('sender_email')->nullable();
            $table->integer('email_port')->nullable();
            $table->string('logo')->nullable();
            $table->string('fevicon')->nullable();
            $table->text('privacy_policy')->nullable();
            $table->text('terms_of_use')->nullable();
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
        Schema::dropIfExists('setings');
    }
}
