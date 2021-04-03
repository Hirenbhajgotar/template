<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PermisionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('permisions')->insert([
            'admin_type' => 1,
            'create' => 1,
            'view' => 1,
            'update' => 1,
            'delete' => 1,
            'is_delete' => 0,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
