<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique()->nullable();
            $table->string('phone')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();
            $table->string('profile_photo')->nullable();
            $table->string('gender')->nullable();
            $table->date('dob')->nullable();
            $table->string('ic_number')->nullable();
            $table->string('level')->nullable();
            $table->string('downline')->nullable();
            $table->string('user_name')->nullable();
            $table->string('role')->nullable();
            $table->string('up_line_name')->nullable();
            $table->text('memo')->nullable();
            $table->string('attachment')->nullable();
            $table->tinyInteger('user_type')->default(0)->comment("1:admin");
            $table->tinyInteger('status')->default(1)->comment("0:Pending, 1: Approved, 2: blocked, 3: Rejected");
            $table->rememberToken();
            $table->softDeletes();
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
        Schema::dropIfExists('users');
    }
};
