# InSL Homepage

This is the homepage for the InSL project, developed with Ruby on Rails (RoR). This README will guide you through the necessary steps to set up, configure, and run the application locally, as well as provide deployment instructions and information on key services.

## Table of Contents
1. Ruby Version
2. System Dependencies
3. Configuration
4. Database Setup
5. Running Tests
6. Services
7. Deployment Instructions

## Ruby Version
- Ruby Version: Ensure you are using Ruby X.X.X (specify exact version).
- Rails Version: Rails X.X.X.
It’s recommended to use a version manager like rbenv or rvm to manage your Ruby versions.

## System Dependencies
The following dependencies are required for the project to run:
- Node.js and Yarn: Used for JavaScript asset compilation.
- PostgreSQL (or relevant database): Required for database management.
- Redis: For caching and background job processing (optional based on usage).
- ImageMagick: For image processing if the app uses ActiveStorage or other image handling libraries.

## Configuration
1. Clone the repository:
   git clone https://github.com/yourusername/InSL-Homepage.git
   cd InSL-Homepage
2. Install the required Ruby gems and dependencies:
   bundle install
   yarn install
3. Set up environment variables. Copy .env.example to .env and fill in the required details:
   cp .env.example .env
4. Database configuration: Ensure your config/database.yml is properly configured to use your development and test databases.

## Database Setup
1. Create the database:
   rails db:create
2. Run migrations:
   rails db:migrate
3. (Optional) Seed the database with sample data:
   rails db:seed

## Running Tests
The test suite uses RSpec. Run the tests with the following command:
rspec
Additional configurations or dependencies may be required based on the testing setup. Refer to the spec/ directory for specific tests.

## Services
- Job Queues: If using ActiveJob, ensure Redis is running for background job processing. This project may use Sidekiq as the adapter.
- Cache Servers: Redis may also be configured as the caching server.
- Search Engines: (Optional) If using a search tool like Elasticsearch or Algolia, ensure those services are configured.

## Deployment Instructions
1. Ensure all environment variables are correctly set in your production environment.
2. Precompile assets:
   RAILS_ENV=production rails assets:precompile
3. Run database migrations in production:
   RAILS_ENV=production rails db:migrate
4. Start the server:
   RAILS_ENV=production rails server

### Additional Notes
- Ensure proper security practices for handling sensitive data and credentials.
- Refer to the Rails Guides for additional configuration or setup help.
