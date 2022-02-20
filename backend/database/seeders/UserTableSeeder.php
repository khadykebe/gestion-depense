<?php

namespace Database\Seeders;
use Faker\Factory as Faker;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $faker = Faker::create();
        foreach (range(1,5) as $value) {
            DB::table('users')->insert([
                'nom'=>$faker->lastName,
                'prenom'=>$faker->firstName,
                'dateNaissance'=>$faker->date,
                'email'=>$faker->email,
                'telephone'=>$faker->phoneNumber,
                'password' => Hash::make('password'),
                'remember_token' => Str::random(10),
                'created_at'=>now(),
                'updated_at'=>now()

            ]);
        }

    }
}
