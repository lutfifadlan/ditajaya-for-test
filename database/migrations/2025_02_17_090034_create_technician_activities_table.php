<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('technician_activities', function (Blueprint $table) {
            $table->id();
            $table->integer('organization_id')->unsigned()->nullable();
            $table->foreign('organization_id')->references('id')->on('organizations')->onDelete('cascade');
            $table->integer('person_id')->unsigned()->nullable();
            $table->foreign('person_id')->references('id')->on('persons')->onDelete('cascade');
            $table->integer('product_id')->unsigned()->nullable();
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
            $table->integer('user_id')->unsigned()->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('brand')->nullable();
            $table->string('mechine_sn')->nullable();
            $table->string('working_hours')->nullable();
            $table->string('load_hours')->nullable();
            $table->string('ambient_temp')->nullable();
            $table->string('amp_powerline')->nullable();
            $table->string('voltage')->nullable();
            $table->string('amp')->nullable();
            $table->string('unload')->nullable();
            $table->string('motor_power')->nullable();
            $table->string('max_press')->nullable();
            $table->string('cut_out')->nullable();
            $table->string('cut_in')->nullable();
            $table->string('motor_overload_setting')->nullable();
            $table->string('inlet_screw')->nullable();
            $table->string('inlet_air_cooler')->nullable();
            $table->string('inlet_oil_cooler')->nullable();
            $table->string('outlet_compressor')->nullable();
            $table->string('inlet_dryer')->nullable();
            $table->string('refrigerant_type')->nullable();
            $table->string('level_oil_check')->nullable();
            $table->string('leakage_check')->nullable();
            $table->string('outlet_screw')->nullable();
            $table->string('outlet_air_cooler')->nullable();
            $table->string('outlet_oil_cooler')->nullable();
            $table->string('outlet_dryer')->nullable();
            $table->string('dew_point')->nullable();
            $table->text('note')->nullable();
            $table->text('suggestion')->nullable();
            $table->text('photos')->nullable();
            $table->text('cust_sign')->nullable();
            $table->text('user_sign')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('technician_activities');
    }
};
