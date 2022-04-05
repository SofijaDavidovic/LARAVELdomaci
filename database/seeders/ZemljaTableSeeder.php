<?php

namespace Database\Seeders;

use App\Models\Zemlja;
use Illuminate\Database\Seeder;

class ZemljaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Zemlja::create([
            'zemlja' => 'SAD'
        ]);

        Zemlja::create([
            'zemlja' => 'Kina'
        ]);

        Zemlja::create([
            'zemlja' => 'Francuska'
        ]);

        Zemlja::create([
            'zemlja' => 'Nemacka'
        ]);

        Zemlja::create([
            'zemlja' => 'Rusija'
        ]);

        Zemlja::create([
            'zemlja' => 'Japan'
        ]);
    }
}
