# HRZGroup Client Portal

A Rails 8 (beta) application that provides a secure portal for HRZGroup administrators and clients. Super administrators and administrators can manage client contact information, while client users can review their organization's profile.

## Getting started

1. Ensure you have Ruby 3.4.4 (or compatible) installed.
2. Install dependencies:

   ```bash
   bundle install
   ```

3. Set up the database and seed default accounts:

   ```bash
   bin/rails db:setup
   ```

4. Start the application:

   ```bash
   bin/rails server
   ```

The portal will be available at `http://localhost:3000`.

## Default credentials

The seed data creates sample accounts:

| Role        | Email                       | Password |
|-------------|-----------------------------|----------|
| Superadmin  | `superadmin@hrzgroup.test`  | `password` |
| Admin       | `admin@hrzgroup.test`       | `password` |
| Client      | `client@acme.test`          | `password` |

Client users are linked to the "Acme Holdings" client profile.

## Authorization rules

- **Superadmin/Admin**: Full CRUD access to client records.
- **Client**: Read-only access to the associated client record.

## Testing

Run the standard Rails test suite once the framework dependencies are installed:

```bash
bin/rails test
```
