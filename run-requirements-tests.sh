#!/bin/bash

echo "🧪 Running Contact Management Requirements Tests"
echo "=============================================="
echo ""

echo "📋 Running Unit Tests (Model Relationships)..."
php artisan test tests/Unit/PersonModelTest.php --stop-on-failure

echo ""
echo "📋 Running Integration Tests (Contact Creation)..."
php artisan test tests/Feature/ContactManagementTest.php --stop-on-failure

echo ""
echo "📋 Running Data Isolation Tests..."
php artisan test tests/Feature/ContactDataIsolationTest.php --stop-on-failure

echo ""
echo "📋 Running Authorization Tests (403 Checks)..."
php artisan test tests/Feature/ContactAuthorizationTest.php --stop-on-failure

echo ""
echo "✅ All tests completed!"