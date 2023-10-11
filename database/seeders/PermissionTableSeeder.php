<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [

            'agent',
            'product',
            'knowledgebase',
            'warehouse-order',
            'order',
            'withdraw-request',
            'level',
            'role',

        ];



        foreach ($permissions as $permission) {

            Permission::create(['name' => $permission]);
        }
    }
}
