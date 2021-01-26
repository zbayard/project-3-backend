# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Song.destroy_all

6.times do 
    Song.create(name: "zach's song", image: "https://picsum.photos/id/#{rand(200)}/200")
end

4.times do 
User.create(name:Faker::Name.name, age: rand(65),bio: Faker::TvShows::MichaelScott.quote)
end

puts 'Seeding accomplished, boys!'

