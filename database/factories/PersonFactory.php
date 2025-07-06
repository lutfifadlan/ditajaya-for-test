<?php

namespace Database\Factories;

use Webkul\Contact\Models\Person;
use Webkul\User\Models\User;
use Webkul\Contact\Models\Organization;
use Illuminate\Database\Eloquent\Factories\Factory;

class PersonFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Person::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'user_id' => User::factory(),
            'organization_id' => Organization::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}