<?php

namespace Database\Seeders;
use Faker\Factory as Faker;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepenseSeeder extends Seeder
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
            DB::table('depenses')->insert([
                'nom'=>$fake->word,
                'date'=>$fake->date,
                'montant'=>$fake->numberBetween(50000,500000),
                'description'=>$fake->text,
                'categorie_id'=>rand(1,5),
                'user_id'=>rand(1,5),
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
        }
    }
}
