# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "faker"
# require "open-uri"


Tool.destroy_all
User.destroy_all

puts "Creating admin"

x = User.create(username: "admin", email: "admin@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Friedrichshain")

puts "Admin-Username | #{x.username}"
puts "Admin-Email    | #{x.email}"
puts "Admin-password | #{x.password}"

puts "..."

puts "Creating Tools for admin"

# 5.times do
# file = URI.open('https://source.unsplash.com/collection/4724540/800x450')
#   tool = Tool.new(name: tools.sample, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), user_id: x.id)
#   tool.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   tool.save
# end

tool = Tool.new(name: "Hammer", description: "High quality hammer with extra grip for everyone who wants to hang some pictures", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "hammer.jpg")), filename: 'hammer.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Hammer created"

################

tool = Tool.new(name: "Drill", description: "A Drill to drill big holes in your wall", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "drill.jpg")), filename: 'drill.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Drill created"

################

tool = Tool.new(name: "Waffle Maker", description: "The best waffle maker out there! My Grandmother made with this Waffle maker the best waffles ever", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "waffle.jpg")), filename: 'waffle.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Waffle Maker created"

################

tool = Tool.new(name: "Chainsaw", description: "Wanna get rid of a body or tree? This poweful Chainsaw will help you to archive anything you can image!", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "saw.jpg")), filename: 'saw.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Chainsaw created"

################

tool = Tool.new(name: "Screwdriver", description: "Weekend Trip to Ikea? Need a helping hand? Look no further! This Screwdriver will help you a lot! Say goodbye to boring long lasting Ikea Building Sessions!", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "screw.jpg")), filename: 'screw.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Screwdriver created"

################

tool = Tool.new(name: "Mixer", description: "Bake a cake or cake a bake, whatever you cake or bake this mixer helps caking and baking", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "mixer.jpg")), filename: 'mixer.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Mixer created"

################

tool = Tool.new(name: "Tent", description: "Weekend Trip? Wedding? Party? This tent is perfect for almost all occations. Easy to build up and weather resistance!", user_id: x.id)
tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "tent.jpg")), filename: 'tent.jpg', content_type: 'image/jpg')
tool.save
puts "Tool Tent created"

################

puts ".."
puts "Creating more users and tools.."


andy = User.create(username: "Andy", email: "andy@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Kreuzberg")

    tool = Tool.new(name: "Hammer", description: "High quality hammer with extra grip for everyone who wants to hang some pictures", user_id: andy.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "hammer.jpg")), filename: 'hammer.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Hammer created"

    tool = Tool.new(name: "Chainsaw", description: "Wanna get rid of a body or tree? This poweful Chainsaw will help you to archive anything you can image!", user_id: andy.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "saw.jpg")), filename: 'saw.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Chainsaw created"


######################

leon = User.create(username: "Leon", email: "leon@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Neukölln")

    tool = Tool.new(name: "Waffle Maker", description: "The best waffle maker out there! My Grandmother made with this Waffle maker the best waffles ever", user_id: leon.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "waffle.jpg")), filename: 'waffle.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Waffle Maker created"



###################

toni = User.create(username: "Toni", email: "toni@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Mitte Berlin")

    tool = Tool.new(name: "Mixer", description: "Bake a cake or cake a bake, whatever you cake or bake this mixer helps caking and baking", user_id: toni.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "mixer.jpg")), filename: 'mixer.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Mixer created"


######################

kaylin = User.create(username: "Kaylin", email: "kaylin@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Schöneberg")

    tool = Tool.new(name: "Tent", description: "Weekend Trip? Wedding? Party? This tent is perfect for almost all occations. Easy to build up and weather resistance!", user_id: kaylin.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "tent.jpg")), filename: 'tent.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Tent created"


#########################


yann = User.create(username: "Yann", email: "leon@gmail.com", password: "123456", phone_number: "+49 151 1337 1338", address: "Tempelhof")

    tool = Tool.new(name: "Waffle Maker", description: "The best waffle maker out there! My Grandmother made with this Waffle maker the best waffles ever", user_id: yann.id)
    tool.photo.attach(io: File.open(Rails.root.join("app", "assets", "images", "waffle.jpg")), filename: 'waffle.jpg', content_type: 'image/jpg')
    tool.save
    puts "Tool Waffle Maker created"


# 3.times do
#   puts "creating users"
#   u = User.create(username: Faker::Name.first_name, email: Faker::Internet.email, password: "123456", phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)
#   puts "creating tools"
#   3.times do
#     file = URI.open('https://source.unsplash.com/collection/4724540/800x450')
#     tool = Tool.new(name: tools.sample, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), user_id: u.id)
#     tool.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#     p tool.save
#   end
# end

puts "Done"
