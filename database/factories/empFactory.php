<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(App\Employee::class, function (Faker $faker) {
           $year = rand(2009, 2016);
            $month = rand(1, 12);
            $day = rand(1, 28);

            $date = Carbon::create($year,$month ,$day);

    return [
       'name'=>$faker->sentence(3),
       'position'=>$faker->sentence(5),
       'about'=>$faker->paragraph(5),
       'join_date'  => $date->format('Y-m-d'),
       'img'=>rand(1,17).".jpg"
        //
    ];
});
