# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = Admin.create(
  email: 'flanthedev@gmail.com',
  password: 'placeholder'
)
if admin.errors.any?
  puts admin.errors.full_messages 
else
  puts "creates an Admin. #{Admin.all.count} total Admin(s)."
end

10.times do |i|
  d = DateTime.now + i.day + i.hours
  Gig.where(
    name: "Gig #{i}",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    date: d.strftime('%m/%d/%Y %l:%M %p')
  ).first_or_create
end
puts "created 10 Gigs. #{Gig.all.count} total Gig(s)."

Page.where(
  title: "Lynn Farmer, performer and educator.",
  body: "Lynn Farmer is the longtime drummer with Meat Beat Manifesto and currently playing with Mojave Phone Booth and The Hip Spanic All Stars. He gives drum lessons in Oakland, CA.",
).first_or_create
Page.where(
  title: "A second entry.",
  body: "... with more text.",
).first_or_create
puts "create a Page. #{Page.all.count} total Page(s)."