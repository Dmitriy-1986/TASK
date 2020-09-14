<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Review;
use Faker\Generator as Faker;

$factory->define(Review::class, function (Faker $faker) {
    return [
        'comment'    => $faker->words(3, true),
        'user_id'    => $faker->randomNumber($nbDigits = NULL, $strict = false),
        'product_id' => $faker->randomNumber($nbDigits = NULL, $strict = false),
        'created_at' => $faker->dateTimeThisCentury($max = 'now', $timezone = null),
        'updated_at' => $faker->dateTimeThisCentury($max = 'now', $timezone = null),
    ];
});
