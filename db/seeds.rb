# Seed default roles and demo accounts.

Client.destroy_all
User.destroy_all

hrz = Client.create!(company_name: "HRZ Group", contact_no: "+1-555-0100", contact_email: "contact@hrzgroup.test")
acme = Client.create!(company_name: "ACME Corp", contact_no: "+1-555-0101", contact_email: "hello@acme.example")

User.create!(email: "superadmin@hrzgroup.test", password: "Password1!", role: :superadmin)
User.create!(email: "admin@hrzgroup.test", password: "Password1!", role: :admin)
User.create!(email: "client@hrzgroup.test", password: "Password1!", role: :client, client: hrz)
User.create!(email: "acme_client@hrzgroup.test", password: "Password1!", role: :client, client: acme)
