<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries', function (Blueprint $table) {
            $table->id();
            $table->string("country_name");
            $table->integer("calling_code")->default(0);
            $table->string("lat");
            $table->string("lng");
            $table->string("timezones");
            $table->string("currencie_code");
            $table->string("currencie_code_name");
            $table->string("country_flag");
            $table->string("alpha_2_code");
            $table->string("alpha_3_code");
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
        Schema::dropIfExists('countries');
    }
}
