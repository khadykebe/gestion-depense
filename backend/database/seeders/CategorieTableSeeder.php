<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorieTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (range(1,5) as $value) {
            DB::table('categories')->insert([
                 'nom'=>'',
                 'typeCategorie'=>'',
                 'created_at'=>now(),
                 'updated_at'=>now()
 
            ]);
         }
    }
}
