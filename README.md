# HRZGroup Client Portal

This repository contains a lightweight Rails 8 style application that powers the HRZGroup client portal. The portal supports three user roles:

- **Superadmin** – full control over the platform and client records
- **Admin** – can manage client records but cannot modify privileged users
- **Client** – can access client listings in read-only mode

## Features

- Email/password authentication with role-based authorization
- CRUD management for client companies (company name, contact number, and contact email)
- Simple dashboard tailored to each user role
- Seed data with example superadmin, admin, and client accounts

## Getting Started

1. Ensure Ruby 3.4+ and bundler are available.
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Setup the database and seed default accounts:
   ```bash
   bin/rails db:setup
   ```
4. Run the development server:
   ```bash
   bin/rails server
   ```
5. Sign in using one of the seeded accounts (password for all accounts is `password`).

> **Note**
> This project was assembled in an offline environment. If bundle install fails, ensure you have access to the Rails 8 beta gems or update the `Gemfile` to match the versions available to you.
