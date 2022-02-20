<?php

namespace Database\Seeders;
use Faker\Factory as Faker;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RevenueSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker=Faker::create();
        foreach (range(1,5) as $value) {
           DB::table('revenues')->insert([
                'solde'=>$faker->numberBetween(50000,500000),
                'categorie_id'=>rand(1,5),
                'user_id'=>rand(1,5),
                'created_at'=>now(),
                'updated_at'=>now()
           ]);
        }
    }
}
