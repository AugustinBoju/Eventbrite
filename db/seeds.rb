# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all



User.create(
  email: "augustinboju@yopmail.com",
  encrypted_password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

puts "User 1"

User.create(
  email: "bojuaugustin2@yopmail.com",
  encrypted_password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

puts "User 2"

Event.create(
  start_date: "2020-04-06",
  duration: 90,
  title: "Vernissage",
  description: "Vernis et sage du vernissage",
  price: 20,
  location: "Paris intra-muros",
)

puts "Event vernissage"

Attendance.create(
  stripe_customer_id: "123456",
)

puts "Attendance"
