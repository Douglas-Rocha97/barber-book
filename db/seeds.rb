# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "creating and staff account..."

User.create!(
  name: "Douglas",
  gender: "male",
  email: "douglas@example.com",
  password: "123456",
  role: :owner,
  number: "080-3509-2343"
)

User.create!(
  name: "Giovanni",
  gender: "male",
  email: "giovanni@example.com",
  password: "123456",
  role: :staff,
  number: "090-3509-9999"
)

puts "accounts created successfully!"
