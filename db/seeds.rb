# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"


Tool.destroy_all
User.destroy_all

tools = ["Hammer", "Drill", "Iron", "Screwdriver", "Waffle maker", "Lawn cutter", "Bicycle Equipment", "Chainsaw", "Hammer", "Sandwich maker", "BBQ-Grill", "Pizza-Oven", "Saw", "Generator", "Tent", "Hanger"]

puts "Creating admin"

x = User.create(username: "admin", email: "admin@gmail.com", password: "123456", phone_number: "0123456789", address: "Equality Street 38")

puts "Admin-Username | #{x.username}"
puts "Admin-Email    | #{x.email}"
puts "Admin-password | #{x.password}"

puts "..."

puts "Creating Tools for admin"

5.times do
file = URI.open('https://source.unsplash.com/collection/4724540/800x450')
  tool = Tool.new(name: tools.sample, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), user_id: x.id)
  tool.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  tool.save
end

puts "Admin tools added"
puts ".."
puts "Creating more users and tools.."


3.times do
  puts "creating users"
  u = User.create(username: Faker::Name.first_name, email: Faker::Internet.email, password: "123456", phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
  puts "creating tools"
  3.times do
    file = URI.open('https://source.unsplash.com/collection/4724540/800x450')
    tool = Tool.new(name: tools.sample, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), user_id: u.id)
    tool.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    p tool.save
  end
end

puts "Done"
