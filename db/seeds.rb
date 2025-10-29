# Create default roles and demo accounts for the HRZGroup portal
client = Client.find_or_create_by!(company_name: "Acme Holdings") do |c|
  c.contact_no = "+1 555-0100"
  c.contact_email = "contact@acme.example"
end

User.find_or_create_by!(email: "superadmin@hrzgroup.test") do |user|
  user.password = "password"
  user.role = :superadmin
end

User.find_or_create_by!(email: "admin@hrzgroup.test") do |user|
  user.password = "password"
  user.role = :admin
end

User.find_or_create_by!(email: "client@acme.test") do |user|
  user.password = "password"
  user.role = :client
  user.client = client
end
