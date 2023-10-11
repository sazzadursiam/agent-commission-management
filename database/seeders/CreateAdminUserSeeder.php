<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

use Spatie\Permission\Models\Permission;

class CreateAdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([

            'name' => 'ACM Admin',

            'email' => 'info@acm.com',

            'user_type' => 1,

            'password' => Hash::make('12345')

        ]);



        $role = Role::create(['name' => 'Admin']);



        $permissions = Permission::pluck('id', 'id')->all();



        $role->syncPermissions($permissions);



        $user->assignRole([$role->id]);
    }
}
