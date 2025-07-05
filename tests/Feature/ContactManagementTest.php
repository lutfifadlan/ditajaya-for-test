<?php

namespace Tests\Feature;

use Tests\TestCase;
use Webkul\User\Models\User;
use Webkul\Contact\Models\Person;
use Webkul\Contact\Models\Organization;
use Webkul\Attribute\Models\Attribute;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ContactManagementTest extends TestCase
{
    use RefreshDatabase;

    protected $admin;
    protected $organization;

    protected function setUp(): void
    {
        parent::setUp();
        
        // Create admin user
        $this->admin = User::factory()->create([
            'email' => 'admin@example.com',
            'password' => bcrypt('admin123'),
        ]);
        
        // Create organization
        $this->organization = Organization::factory()->create([
            'name' => 'Test Organization',
        ]);
        
        // Ensure attributes exist
        $this->seedAttributes();
    }

    /**
     * Seed required attributes for contact creation.
     */
    protected function seedAttributes()
    {
        // Create name attribute
        Attribute::create([
            'code' => 'name',
            'name' => 'Name',
            'type' => 'text',
            'entity_type' => 'persons',
            'is_required' => 1,
            'is_unique' => 0,
            'validation' => 'required',
            'sort_order' => 1,
        ]);
        
        // Create email attribute
        Attribute::create([
            'code' => 'emails',
            'name' => 'Emails',
            'type' => 'email',
            'entity_type' => 'persons',
            'is_required' => 0,
            'is_unique' => 1,
            'validation' => 'email|unique:persons,emails',
            'sort_order' => 2,
        ]);
        
        // Create organization attribute
        Attribute::create([
            'code' => 'organization_id',
            'name' => 'Organization',
            'type' => 'lookup',
            'entity_type' => 'persons',
            'is_required' => 0,
            'is_unique' => 0,
            'lookup_type' => 'organizations',
            'sort_order' => 3,
        ]);
    }

    /**
     * Test contact creation with organization selection.
     *
     * @return void
     */
    public function test_contact_creation_with_organization()
    {
        $this->actingAs($this->admin, 'admin');
        
        $contactData = [
            'name' => 'Test Contact',
            'emails' => [
                ['value' => 'test@example.com', 'label' => 'work']
            ],
            'organization_id' => $this->organization->id,
        ];
        
        $response = $this->post(route('admin.contacts.persons.store'), $contactData);
        
        $response->assertRedirect();
        $response->assertSessionHas('success');
        
        // Verify contact was created with organization
        $person = Person::where('name', 'Test Contact')->first();
        $this->assertNotNull($person);
        $this->assertEquals($this->organization->id, $person->organization_id);
        $this->assertEquals($this->admin->id, $person->user_id);
    }

    /**
     * Test contact is automatically assigned to logged-in user.
     *
     * @return void
     */
    public function test_contact_automatically_assigned_to_logged_in_user()
    {
        $this->actingAs($this->admin, 'admin');
        
        $contactData = [
            'name' => 'Auto Assigned Contact',
            'emails' => [
                ['value' => 'auto@example.com', 'label' => 'work']
            ],
            'organization_id' => $this->organization->id,
        ];
        
        $response = $this->post(route('admin.contacts.persons.store'), $contactData);
        
        $response->assertRedirect();
        
        // Verify contact was assigned to logged-in user
        $person = Person::where('name', 'Auto Assigned Contact')->first();
        $this->assertNotNull($person);
        $this->assertEquals($this->admin->id, $person->user_id);
    }

    /**
     * Test contact must belong to both user and organization.
     *
     * @return void
     */
    public function test_contact_belongs_to_both_user_and_organization()
    {
        $this->actingAs($this->admin, 'admin');
        
        $contactData = [
            'name' => 'Dual Ownership Contact',
            'emails' => [
                ['value' => 'dual@example.com', 'label' => 'work']
            ],
            'organization_id' => $this->organization->id,
        ];
        
        $response = $this->post(route('admin.contacts.persons.store'), $contactData);
        
        $response->assertRedirect();
        
        // Verify contact belongs to both
        $person = Person::where('name', 'Dual Ownership Contact')->first();
        $this->assertNotNull($person);
        $this->assertNotNull($person->user_id);
        $this->assertNotNull($person->organization_id);
        $this->assertEquals($this->admin->id, $person->user_id);
        $this->assertEquals($this->organization->id, $person->organization_id);
    }

    /**
     * Test user cannot change ownership during update.
     *
     * @return void
     */
    public function test_user_cannot_change_ownership_during_update()
    {
        $this->actingAs($this->admin, 'admin');
        
        // Create a contact
        $person = Person::factory()->create([
            'user_id' => $this->admin->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // Create another user
        $otherUser = User::factory()->create();
        
        // Try to update with different user_id
        $updateData = [
            'name' => 'Updated Contact',
            'user_id' => $otherUser->id, // Try to change owner
            'emails' => [
                ['value' => 'updated@example.com', 'label' => 'work']
            ],
        ];
        
        $response = $this->put(route('admin.contacts.persons.update', $person->id), $updateData);
        
        $response->assertRedirect();
        
        // Verify ownership wasn't changed
        $person->refresh();
        $this->assertEquals($this->admin->id, $person->user_id);
        $this->assertNotEquals($otherUser->id, $person->user_id);
    }
}