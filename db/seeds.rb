User.find_or_create_by!(email: "superadmin@example.com") do |user|
  user.name = "Super Admin"
  user.role = :superadmin
  user.password = "password"
  user.password_confirmation = "password"
end

User.find_or_create_by!(email: "admin@example.com") do |user|
  user.name = "Admin User"
  user.role = :admin
  user.password = "password"
  user.password_confirmation = "password"
end

User.find_or_create_by!(email: "client@example.com") do |user|
  user.name = "Client User"
  user.role = :client
  user.password = "password"
  user.password_confirmation = "password"
end

Client.find_or_create_by!(company_name: "HRZ Manufacturing") do |client|
  client.contact_no = "+1 555-0100"
  client.contact_email = "contact@hrzmanufacturing.example"
end

Client.find_or_create_by!(company_name: "Zenith Partners") do |client|
  client.contact_no = "+1 555-0125"
  client.contact_email = "hello@zenithpartners.example"
end
