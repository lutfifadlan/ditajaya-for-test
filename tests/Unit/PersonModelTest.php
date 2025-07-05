<?php

namespace Tests\Unit;

use Tests\TestCase;
use Webkul\Contact\Models\Person;
use Webkul\Contact\Models\Organization;
use Webkul\User\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PersonModelTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test that Person model has user relationship.
     *
     * @return void
     */
    public function test_person_belongs_to_user()
    {
        // Create a user
        $user = User::factory()->create();
        
        // Create a person belonging to the user
        $person = Person::factory()->create([
            'user_id' => $user->id,
        ]);
        
        // Assert the relationship
        $this->assertInstanceOf(User::class, $person->user);
        $this->assertEquals($user->id, $person->user->id);
    }

    /**
     * Test that Person model has organization relationship.
     *
     * @return void
     */
    public function test_person_belongs_to_organization()
    {
        // Create an organization
        $organization = Organization::factory()->create();
        
        // Create a person belonging to the organization
        $person = Person::factory()->create([
            'organization_id' => $organization->id,
        ]);
        
        // Assert the relationship
        $this->assertInstanceOf(Organization::class, $person->organization);
        $this->assertEquals($organization->id, $person->organization->id);
    }

    /**
     * Test that Person can belong to both user and organization.
     *
     * @return void
     */
    public function test_person_belongs_to_both_user_and_organization()
    {
        // Create user and organization
        $user = User::factory()->create();
        $organization = Organization::factory()->create();
        
        // Create a person belonging to both
        $person = Person::factory()->create([
            'user_id' => $user->id,
            'organization_id' => $organization->id,
        ]);
        
        // Assert both relationships
        $this->assertInstanceOf(User::class, $person->user);
        $this->assertEquals($user->id, $person->user->id);
        
        $this->assertInstanceOf(Organization::class, $person->organization);
        $this->assertEquals($organization->id, $person->organization->id);
    }

    /**
     * Test that user can have many contacts.
     *
     * @return void
     */
    public function test_user_has_many_persons()
    {
        // Create a user
        $user = User::factory()->create();
        
        // Create multiple persons for the user
        $person1 = Person::factory()->create(['user_id' => $user->id]);
        $person2 = Person::factory()->create(['user_id' => $user->id]);
        $person3 = Person::factory()->create(['user_id' => $user->id]);
        
        // Refresh user to load relationships
        $user->refresh();
        
        // Assert user has 3 persons
        $this->assertCount(3, $user->persons);
        $this->assertTrue($user->persons->contains($person1));
        $this->assertTrue($user->persons->contains($person2));
        $this->assertTrue($user->persons->contains($person3));
    }

    /**
     * Test that organization can have many contacts.
     *
     * @return void
     */
    public function test_organization_has_many_persons()
    {
        // Create an organization
        $organization = Organization::factory()->create();
        
        // Create multiple persons for the organization
        $person1 = Person::factory()->create(['organization_id' => $organization->id]);
        $person2 = Person::factory()->create(['organization_id' => $organization->id]);
        $person3 = Person::factory()->create(['organization_id' => $organization->id]);
        
        // Refresh organization to load relationships
        $organization->refresh();
        
        // Assert organization has 3 persons
        $this->assertCount(3, $organization->persons);
        $this->assertTrue($organization->persons->contains($person1));
        $this->assertTrue($organization->persons->contains($person2));
        $this->assertTrue($organization->persons->contains($person3));
    }
}