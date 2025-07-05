<?php

namespace Tests\Feature;

use Tests\TestCase;
use Webkul\User\Models\User;
use Webkul\User\Models\Role;
use Webkul\Contact\Models\Person;
use Webkul\Contact\Models\Organization;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ContactAuthorizationTest extends TestCase
{
    use RefreshDatabase;

    protected $user1;
    protected $user2;
    protected $organization;
    protected $user1Contact;
    protected $user2Contact;

    protected function setUp(): void
    {
        parent::setUp();
        
        // Create organization
        $this->organization = Organization::factory()->create();
        
        // Create admin role
        $adminRole = Role::create([
            'name' => 'Administrator',
            'description' => 'Administrator role',
            'permission_type' => 'all',
        ]);
        
        // Create two users
        $this->user1 = User::factory()->create();
        $this->user1->roles()->attach($adminRole);
        
        $this->user2 = User::factory()->create();
        $this->user2->roles()->attach($adminRole);
        
        // Create contacts for each user
        $this->user1Contact = Person::factory()->create([
            'name' => 'User1 Contact',
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        $this->user2Contact = Person::factory()->create([
            'name' => 'User2 Contact',
            'user_id' => $this->user2->id,
            'organization_id' => $this->organization->id,
        ]);
    }

    /**
     * Test user cannot view another user's contact (403).
     *
     * @return void
     */
    public function test_user_cannot_view_another_users_contact()
    {
        // User1 tries to view User2's contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.view', $this->user2Contact->id));
        
        $response->assertStatus(403);
        $response->assertSee('403');
    }

    /**
     * Test user can view their own contact.
     *
     * @return void
     */
    public function test_user_can_view_their_own_contact()
    {
        // User1 views their own contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.view', $this->user1Contact->id));
        
        $response->assertStatus(200);
        $response->assertSee($this->user1Contact->name);
    }

    /**
     * Test user cannot edit another user's contact (403).
     *
     * @return void
     */
    public function test_user_cannot_edit_another_users_contact()
    {
        // User1 tries to edit User2's contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.edit', $this->user2Contact->id));
        
        $response->assertStatus(403);
        $response->assertSee('403');
    }

    /**
     * Test user can edit their own contact.
     *
     * @return void
     */
    public function test_user_can_edit_their_own_contact()
    {
        // User1 edits their own contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.edit', $this->user1Contact->id));
        
        $response->assertStatus(200);
        $response->assertSee($this->user1Contact->name);
    }

    /**
     * Test user cannot update another user's contact (403).
     *
     * @return void
     */
    public function test_user_cannot_update_another_users_contact()
    {
        // User1 tries to update User2's contact
        $this->actingAs($this->user1, 'admin');
        
        $updateData = [
            'name' => 'Updated Contact Name',
            'emails' => [
                ['value' => 'updated@example.com', 'label' => 'work']
            ],
        ];
        
        $response = $this->put(route('admin.contacts.persons.update', $this->user2Contact->id), $updateData);
        
        $response->assertStatus(403);
        
        // Verify contact wasn't updated
        $this->user2Contact->refresh();
        $this->assertNotEquals('Updated Contact Name', $this->user2Contact->name);
    }

    /**
     * Test user can update their own contact.
     *
     * @return void
     */
    public function test_user_can_update_their_own_contact()
    {
        // User1 updates their own contact
        $this->actingAs($this->user1, 'admin');
        
        $updateData = [
            'name' => 'Updated Contact Name',
            'emails' => [
                ['value' => 'updated@example.com', 'label' => 'work']
            ],
        ];
        
        $response = $this->put(route('admin.contacts.persons.update', $this->user1Contact->id), $updateData);
        
        $response->assertRedirect();
        
        // Verify contact was updated
        $this->user1Contact->refresh();
        $this->assertEquals('Updated Contact Name', $this->user1Contact->name);
    }

    /**
     * Test user cannot delete another user's contact (403).
     *
     * @return void
     */
    public function test_user_cannot_delete_another_users_contact()
    {
        // User1 tries to delete User2's contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->delete(route('admin.contacts.persons.delete', $this->user2Contact->id));
        
        $response->assertStatus(403);
        
        // Verify contact wasn't deleted
        $this->assertDatabaseHas('persons', [
            'id' => $this->user2Contact->id,
        ]);
    }

    /**
     * Test user can delete their own contact.
     *
     * @return void
     */
    public function test_user_can_delete_their_own_contact()
    {
        // User1 deletes their own contact
        $this->actingAs($this->user1, 'admin');
        $response = $this->delete(route('admin.contacts.persons.delete', $this->user1Contact->id));
        
        $response->assertStatus(200);
        
        // Verify contact was deleted
        $this->assertDatabaseMissing('persons', [
            'id' => $this->user1Contact->id,
        ]);
    }

    /**
     * Test mass delete respects authorization.
     *
     * @return void
     */
    public function test_mass_delete_respects_authorization()
    {
        // Create additional contacts
        $user1Contact2 = Person::factory()->create([
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // User1 tries to mass delete including User2's contact
        $this->actingAs($this->user1, 'admin');
        
        $response = $this->post(route('admin.contacts.persons.mass_delete'), [
            'indices' => [
                $this->user1Contact->id,
                $user1Contact2->id,
                $this->user2Contact->id, // This should be rejected
            ],
        ]);
        
        $response->assertStatus(200);
        
        // Verify only user1's contacts were deleted
        $this->assertDatabaseMissing('persons', ['id' => $this->user1Contact->id]);
        $this->assertDatabaseMissing('persons', ['id' => $user1Contact2->id]);
        $this->assertDatabaseHas('persons', ['id' => $this->user2Contact->id]); // Should still exist
    }

    /**
     * Test direct URL access to unauthorized contact returns 403.
     *
     * @return void
     */
    public function test_direct_url_access_to_unauthorized_contact_returns_403()
    {
        // User1 tries direct URL access to User2's contact
        $this->actingAs($this->user1, 'admin');
        
        // Try view URL
        $response = $this->get("/admin/contacts/persons/view/{$this->user2Contact->id}");
        $response->assertStatus(403);
        
        // Try edit URL
        $response = $this->get("/admin/contacts/persons/edit/{$this->user2Contact->id}");
        $response->assertStatus(403);
    }
}