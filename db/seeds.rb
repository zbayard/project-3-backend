# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Song.destroy_all
Ownership.destroy_all
Song.create(name:"Eventually", artist:"Tame Impala", genre:"Psychadelic Rock", image:"https://upload.wikimedia.org/wikipedia/en/9/9b/Tame_Impala_-_Currents.png", mp3:"https://play.idmp3s.com/stream/-3vZ3uH:3YKJB", bio:"My fav song about break ups")
Song.create(name:"Sunday Song", artist:"Lane 8", genre:"Deep House", image:"https://m.media-amazon.com/images/I/61t3JnlMBeL._SS500_.jpg", mp3:"https://play.idmp3s.com/stream/-YtpEvH:YypYN", bio:"So yummy")
Song.create(name:"Tadow", artist:"Masego, FKJ", genre:"Electronic", image:"https://i.pinimg.com/originals/cc/4b/f0/cc4bf0596ec42975adef82a282dfc96b.jpg", mp3:"https://play.idmp3s.com/stream/NvcVvB:X331rB", bio:"Probs one of the best tracks of it's decade")
Song.create(name:"Like A Fool", artist:"Crazy P", genre:"Smooth Disco", image:"https://im.ra.co/images/reviews/2015/wdwcd001-crazyp.jpg", mp3:"https://play.idmp3s.com/stream/muWBZB:FgNAsB", bio:"spicy af")
Song.create(name:"L", artist:"Tycho", genre:"Electronic", image:"https://i1.sndcdn.com/artworks-000072776600-m75qs3-t500x500.jpg", mp3:"https://play.idmp3s.com/stream/HECNx:TbX1rB", bio:"one of the greatest")
Song.create(name:"Nervous Tics", artist:"Maribou State", genre:"Electronic", image:"https://f4.bcbits.com/img/a0006169183_10.jpg", mp3:"https://play.idmp3s.com/stream/-nJxkG:qfY1rB", bio:"omggggg")
Song.create(name:"Plage isolee", artist:"Polo & Pan", genre:"World/Electronic", image:"https://f4.bcbits.com/img/a3771390718_10.jpg", mp3:"https://play.idmp3s.com/stream/cuWBZB:vPR3rB", bio:"BOP")
Song.create(name:"Never Lost", artist:"Amtrac", genre:"Electronic", image:"https://f4.bcbits.com/img/a0995184981_10.jpg", mp3:"https://play.idmp3s.com/stream/rzYtuH:KyX1rB", bio:"I dance so hard to this in my bedroom")
Song.create(name:"Propagation", artist:"Com Truise", genre:"Electronic", image:"https://f4.bcbits.com/img/a1980342671_10.jpg", mp3:"https://play.idmp3s.com/stream/cuWBZB:Daz2rB", bio:"y r these synths so crispy")


User.create(name: 'Gabe', age: 29, bio: 'just okay')

20.times do Ownership.create(user_id: User.all.shuffle.first.id, song_id: Song.all.shuffle.first.id)
end
puts 'Seeding accomplished, boys!'

