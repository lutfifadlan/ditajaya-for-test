import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './tests/e2e',
  timeout: process.env.CI ? 120 * 1000 : 60 * 1000, // 2 minutes in CI, 1 minute locally
  expect: {
    timeout: 10000 // Increased expect timeout
  },
  fullyParallel: true, // Enable parallel execution
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 1, // Add retries for stability
  workers: process.env.CI ? 1 : '50%', // Use 1 worker in CI for stability, 50% of CPU cores locally
  reporter: [['html'], ['line']], // Multiple reporters
  
  use: {
    baseURL: 'http://localhost:8000',
    trace: 'on-first-retry',
    screenshot: 'only-on-failure',
    video: 'on', // Record video for all tests
    headless: process.env.CI ? true : false, // Headless in CI, headed locally
  },

  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    },
    {
      name: 'firefox',
      use: { ...devices['Desktop Firefox'] },
    },
    {
      name: 'webkit',
      use: { ...devices['Desktop Safari'] },
    },
    // Mobile devices for broader testing
    {
      name: 'Mobile Chrome',
      use: { ...devices['Pixel 5'] },
    },
  ],

  webServer: {
    command: 'php artisan serve',
    port: 8000,
    reuseExistingServer: true, // Always reuse existing server
  },
});