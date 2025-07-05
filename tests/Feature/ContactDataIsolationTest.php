<?php

namespace Tests\Feature;

use Tests\TestCase;
use Webkul\User\Models\User;
use Webkul\User\Models\Role;
use Webkul\Contact\Models\Person;
use Webkul\Contact\Models\Organization;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ContactDataIsolationTest extends TestCase
{
    use RefreshDatabase;

    protected $user1;
    protected $user2;
    protected $organization;

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
        
        // Create two users with admin role
        $this->user1 = User::factory()->create();
        $this->user1->roles()->attach($adminRole);
        
        $this->user2 = User::factory()->create();
        $this->user2->roles()->attach($adminRole);
    }

    /**
     * Test users can only see their own contacts in list.
     *
     * @return void
     */
    public function test_users_only_see_their_own_contacts_in_list()
    {
        // Create contacts for user1
        $user1Contact1 = Person::factory()->create([
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        $user1Contact2 = Person::factory()->create([
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // Create contacts for user2
        $user2Contact1 = Person::factory()->create([
            'user_id' => $this->user2->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // Test user1 sees only their contacts
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.index'));
        
        $response->assertStatus(200);
        $response->assertSee($user1Contact1->name);
        $response->assertSee($user1Contact2->name);
        $response->assertDontSee($user2Contact1->name);
        
        // Test user2 sees only their contacts
        $this->actingAs($this->user2, 'admin');
        $response = $this->get(route('admin.contacts.persons.index'));
        
        $response->assertStatus(200);
        $response->assertSee($user2Contact1->name);
        $response->assertDontSee($user1Contact1->name);
        $response->assertDontSee($user1Contact2->name);
    }

    /**
     * Test data isolation in search functionality.
     *
     * @return void
     */
    public function test_search_respects_data_isolation()
    {
        // Create contacts with similar names for different users
        $user1Contact = Person::factory()->create([
            'name' => 'John Smith',
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        $user2Contact = Person::factory()->create([
            'name' => 'John Doe',
            'user_id' => $this->user2->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // User1 searches for "John"
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.contacts.persons.search') . '?query=John');
        
        $response->assertStatus(200);
        $responseData = $response->json();
        
        // Should only find user1's contact
        $this->assertCount(1, $responseData['data']);
        $this->assertEquals($user1Contact->id, $responseData['data'][0]['id']);
        
        // User2 searches for "John"
        $this->actingAs($this->user2, 'admin');
        $response = $this->get(route('admin.contacts.persons.search') . '?query=John');
        
        $response->assertStatus(200);
        $responseData = $response->json();
        
        // Should only find user2's contact
        $this->assertCount(1, $responseData['data']);
        $this->assertEquals($user2Contact->id, $responseData['data'][0]['id']);
    }

    /**
     * Test contacts are properly filtered by user in data grid.
     *
     * @return void
     */
    public function test_contacts_filtered_by_user_in_data_grid()
    {
        // Create multiple contacts for each user
        Person::factory()->count(5)->create([
            'user_id' => $this->user1->id,
            'organization_id' => $this->organization->id,
        ]);
        
        Person::factory()->count(3)->create([
            'user_id' => $this->user2->id,
            'organization_id' => $this->organization->id,
        ]);
        
        // Test user1 data grid
        $this->actingAs($this->user1, 'admin');
        $response = $this->get(route('admin.datagrid.api', ['src' => 'admin.contacts.persons.index']));
        
        $response->assertStatus(200);
        $responseData = $response->json();
        
        // User1 should see 5 contacts
        $this->assertCount(5, $responseData['records']);
        
        // All contacts should belong to user1
        foreach ($responseData['records'] as $record) {
            $person = Person::find($record['person_id']);
            $this->assertEquals($this->user1->id, $person->user_id);
        }
        
        // Test user2 data grid
        $this->actingAs($this->user2, 'admin');
        $response = $this->get(route('admin.datagrid.api', ['src' => 'admin.contacts.persons.index']));
        
        $response->assertStatus(200);
        $responseData = $response->json();
        
        // User2 should see 3 contacts
        $this->assertCount(3, $responseData['records']);
        
        // All contacts should belong to user2
        foreach ($responseData['records'] as $record) {
            $person = Person::find($record['person_id']);
            $this->assertEquals($this->user2->id, $person->user_id);
        }
    }

    /**
     * Test superadmin with global access can see all contacts.
     *
     * @return void
     */
    public function test_superadmin_can_see_all_contacts()
    {
        // Create superadmin role with global access
        $superAdminRole = Role::create([
            'name' => 'Superadmin',
            'description' => 'Superadmin role',
            'permission_type' => 'all',
        ]);
        
        $superAdmin = User::factory()->create();
        $superAdmin->roles()->attach($superAdminRole);
        
        // Mock bouncer to return empty array (no user filtering)
        $this->app->bind('bouncer', function () {
            return new class {
                public function getAuthorizedUserIds() {
                    return []; // Empty array means no filtering
                }
                public function hasPermission($permission) {
                    return true;
                }
            };
        });
        
        // Create contacts for different users
        Person::factory()->count(3)->create(['user_id' => $this->user1->id]);
        Person::factory()->count(2)->create(['user_id' => $this->user2->id]);
        
        // Superadmin should see all contacts
        $this->actingAs($superAdmin, 'admin');
        $response = $this->get(route('admin.datagrid.api', ['src' => 'admin.contacts.persons.index']));
        
        $response->assertStatus(200);
        $responseData = $response->json();
        
        // Should see all 5 contacts
        $this->assertCount(5, $responseData['records']);
    }
}