<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    $name = $faker->words(3, true);
    return [
        'title'        => $faker->words(3, true),
        'slug'         => Str::slug($name, '-'),
        'description'  => Str::random(10),
        'img'          => $faker->randomElement( ['https://loremflickr.com/320/240', null] ),
        'created_at'   => date('Y-m-d'),
        'updated_at'   => date('Y-m-d'),
    ];
});
