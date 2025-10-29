# HRZ Group Client Portal

This Rails 8 application provides a simple portal for managing client records with role-based access control.

## Roles

- **Superadmin** and **Admin** users can create, read, update, and delete client records.
- **Client** users can sign in to view their own client details.

## Getting Started

1. Ensure Ruby 3.4.4 and Bundler 2.6.7 are installed.
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Set up the database and seed demo data:
   ```bash
   bundle exec rails db:prepare
   bundle exec rails db:seed
   ```
4. Start the development server:
   ```bash
   bundle exec rails server
   ```
5. Visit `http://localhost:3000` and sign in using one of the seeded accounts:
   - `superadmin@hrzgroup.test` / `Password1!`
   - `admin@hrzgroup.test` / `Password1!`
   - `client@hrzgroup.test` / `Password1!`

## Running Tests

```bash
bundle exec rails test
```

## Deployment Notes

The application uses SQLite for development and testing. Configure the `DATABASE_URL` environment variable for production deployments if a different database is required.
