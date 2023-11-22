<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'SISTEMAS FREE',
            'email' => 'ana.info1999@gmail.com',
            'password' => bcrypt('admin123')
        ]);
    }
}
