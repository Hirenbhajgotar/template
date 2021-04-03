<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'super admin',
            'email' => 'bhajgotar8918514@gmail.com',
            'email_verified_at' => now(),
            'role' => 1,
            'password' => Hash::make('admin'),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
