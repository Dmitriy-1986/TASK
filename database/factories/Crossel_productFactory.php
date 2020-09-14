<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Crossel_product ;
use Faker\Generator as Faker;

$factory->define(Crossel_product ::class, function (Faker $faker) {
    return [
        'product_id' => $faker->numberBetween(1, 10),
        'crossel_id' => $faker->numberBetween(1, 10), 
    ];
});
