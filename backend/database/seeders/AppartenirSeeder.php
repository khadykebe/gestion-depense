<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class AppartenirSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fake=Faker::create();
        foreach (range(1,5) as $value) {
           DB::table('appartenirs')->insert([
                'categorie2_id'=>rand(1,5),
                'categorie1_id'=>rand(1,5),
                'created_at'=>now(),
                'updated_at'=>now()

           ]);
        }
    }
}
