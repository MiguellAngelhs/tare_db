<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // spatie documentation
        app()->make(\Spatie\Permission\PermissionRegistrar::class)->forgetCachedPermissions();

        $permissions = [
            'permission_index',
            'permission_create',
            'permission_show',
            'permission_edit',
            'permission_destroy',

            'role_index',
            'role_create',
            'role_show',
            'role_edit',
            'role_destroy',

            'user_index',
            'user_create',
            'user_show',
            'user_edit',
            'user_destroy',

            'post_index',
            'post_create',
            'post_show',
            'post_edit',
            'post_destroy',
            // 
            'propiedad_index',
            'propiedad_create',
            'propiedad_show',
            'propiedad_edit',
            'propiedad_destroy',
            // 
            'inmueble_index',
            'inmueble_create',
            'inmueble_show',
            'inmueble_edit',
            'inmueble_destroy',
            //
            'estado_index',
            'estado_create',
            'estado_show',
            'estado_edit',
            'estado_destroy', 
            //
            'documento_index',
            'documento_create',
            'documento_show',
            'documento_edit',
            'documento_destroy', 
        ];

        foreach ($permissions as $permission) {
            Permission::create([
                'name' => $permission
            ]);
        }
    }
}
