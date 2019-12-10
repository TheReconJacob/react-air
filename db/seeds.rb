# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

simon = User.create({username: "Simon", password: "password"})
simons_house_1 = simon.properties.create({description: "OH YEAH", location: "London", price: 25})
simon.properties.first.image.attach({io: File.open("./db/images/house1.jpg"), filename: "house1.jpg", content_type: "image/jpeg"})

timmy = User.create({username: "Timmy", password: "password"})
timmys_house_1 = timmy.properties.create({description: "this is a flat for the dankest of memes", location: "London", price: 55})
timmy.properties.first.image.attach({io: File.open("./db/images/house2.jpg"), filename: "house2.jpg", content_type: "image/jpeg"})

sam = User.create({username: "Sam", password: "password"})
sams_house_1 = sam.properties.create({description: "REEEEE", location: "MEME Land", price: 65})
sam.properties.first.image.attach({io: File.open("./db/images/house3.jpg"), filename: "house3.jpg", content_type: "image/jpeg"})

jack = User.create({username: "Jack", password: "password"})
jacks_house_1 = jack.properties.create({description: "Just MEMES", location: "Some where", price: 90})
jack.properties.first.image.attach({io: File.open("./db/images/house4.jpg"), filename: "house4.jpg", content_type: "image/jpeg"})