<?php

namespace Database\Seeders;

use App\Models\Compania;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CompaniaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Compania::create([
            'nombre' => 'SISTEMAS FREE',
            'correo' => 'info@gmail.com',
            'telefono' => '987896543',
            'direccion' => 'Perú',
        ]);
    }
}
