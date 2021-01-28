# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Song.destroy_all

20.times do 
    Song.create(name: Faker::Music::Prince.song, image: "https://picsum.photos/id/#{rand(200)}/200", genre: Faker::Music.genre)
end


User.create(name:'Gabe', age: 29, bio: 'dope')

4.times do 
User.create(name:Faker::Name.name, age: rand(65),bio: Faker::TvShows::MichaelScott.quote)
end

30.times do Ownership.create(user_id: User.all.shuffle.first.id, song_id: Song.all.shuffle.first.id)
end
puts 'Seeding accomplished, boys!'

