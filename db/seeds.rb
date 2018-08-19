# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(
  email: 'flanthedev@gmail.com',
  password: 'placeholder'
)
puts "creates #{Admin.all.count} admins"

10.times do |i|
  d = DateTime.now + i.day + i.hours
  Gig.create(
    name: "Gig #{i}",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    date: d.strftime('%m/%d/%Y %l:%M %p')
  )
end
puts "created #{Gig.all.count} Gigs"
