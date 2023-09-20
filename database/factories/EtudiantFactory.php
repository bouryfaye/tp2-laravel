<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Ville;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Etudiant>
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nom' => $this->faker->name,
            'adresse' => $this->faker->address,
            'phone' => $this->faker->phoneNumber,
            'email' => $this->faker->unique->email,
            'dateNaissance' => $this->faker->dateTimeBetween('1960-01-01', '2002-12-31')
            ->format('d/m/Y'),
            'ville_id' => Ville::inRandomOrder()->first()->id,
        ];
    }
}
