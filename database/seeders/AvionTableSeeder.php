<?php

namespace Database\Seeders;

use App\Models\Avion;
use Illuminate\Database\Seeder;

class AvionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 20; $i++) {

            Avion::create([
                'model' => $faker->sentence(1),
                'opis' => $faker->sentence(6),
                'tipId' => rand(1,2),
                'zemljaId' => rand(1,6),
            ]);
        }
    }
}
