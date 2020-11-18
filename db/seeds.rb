# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
Booking.destroy_all
Tool.destroy_all
User.destroy_all

user1 = User.create!(
  email:    "michel@example.com",
  password: "password",
  )

user2 = User.create!(
  email:    "lucie@example.com",
  password: "password",
  )

user3 = User.create!(
  email:    "brandon@example.com",
  password: "password",
  )

user4 = User.create!(
  email:    "celeste@example.com",
  password: "password",
  )

user5 = User.create!(
  email:    "anna@example.com",
  password: "password",
  )


tool1 = Tool.new(
  daily_price: 30,
  location:   "Dinan",
  description: "Cette tondeuse thermique est très facile à manier. Largeur de coupe : 46 cm. 5 hauteurs de coupe de 27 à 80 mm.",
  name: "Greencut",
  user: user1
  )
tool1.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-1.jpg')), filename: 'lawn-mower-1.jpg')
tool1.save!


tool2 = Tool.new(
  daily_price: 95,
  location:   "Dinan",
  description: "Tondeuse téléportée idéale pour grandes surfaces. Largeur de coupe 76cm. Hauteur de coupe de 4 à 10 cm.",
  name: "MTD",
  user: user1
  )
tool2.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-2.jpg')), filename: 'lawn-mower-2.jpg')
tool2.save!

tool3 = Tool.new(
  daily_price: 50,
  location:   "Saint Malo",
  description: "Tondeuse electrique sans fil pour une surface inférieure à 1000 m2. Largeur de coupe 43 cm. Hauteur de coupe : 13 positions.",
  name: "Makita",
  user: user2
  )
tool3.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-3.jpg')), filename: 'lawn-mower-3.jpg')
tool3.save!


tool4 = Tool.new(
  daily_price: 40,
  location:   "Saint-Malo",
  description: "Tondeuse electrique filaire. Idéale pour une surface inférieure à 500 m2. Largeur de coupe 40 cm. Hauteur de coupe de 20 à 70 mm.",
  name: "Rotak",
  user: user2
  )
tool4.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-4.jpg')), filename: 'lawn-mower-4.jpg')
tool4.save!


tool5 = Tool.new(
  daily_price: 35,
  location:   "Iffendic",
  description: "Tondeuse thermique autotractée. Moteur puissant. Largeur de coupe 51cm. Adaptée pour des surfaces inférieures à 2000 m2.",
  name: "Elem",
  user: user3
  )
tool5.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-5.jpg')), filename: 'lawn-mower-5.jpg')
tool5.save!

tool6 = Tool.new(
  daily_price: 60,
  location:   "Iffendic",
  description: "Tondeuse thermique. Châssis en acier avec une largeur de coupe 56 cm. Réglage de hauteur centralisé (25-75 mm) sur toutes les roues.",
  name: "Grizzly",
  user: user3
  )
tool6.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-6.jpg')), filename: 'lawn-mower-6.jpg')
tool6.save!

tool7 = Tool.new(
  daily_price: 30,
  location:   "Iffendic",
  description: "Tondeuse à gazon thermique avec bac de ramassage de 45 litres. Largeur de coupe 41 cm.",
  name: "Yardforce",
  user: user3
  )
tool7.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-7.jpg')), filename: 'lawn-mower-7.jpg')
tool7.save!

tool8 = Tool.new(
  daily_price: 75,
  location:   "Le Val André",
  description: "Tondeuse electrique sans fil avec batterie de 60V 6Ah. Silencieuse. Largeur de coupe de 50 cm. Plusieurs hauteurs. Fonction mulching.",
  name: "Greenworks",
  user: user4
  )
tool8.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-8.png')), filename: 'lawn-mower-8.png')
tool8.save!

tool9 = Tool.new(
  daily_price: 180,
  location:   "Le Val André",
  description: "Cette tondeuse est autoportée. Largeur de coupe de 66 cm de coupe. Moteur Alpina OHV puissant. Fonction mulching. Ejection latérale.",
  name: "Alpina",
  user: user4
  )
tool9.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-9.jpg')), filename: 'lawn-mower-9.jpg')
tool9.save!

tool10 = Tool.new(
  daily_price: 70,
  location:   "Le Val André",
  description: "Tondeuse à gazon sans fil. 2 batteries  18 V avec témoins lumineux. Temps de charhe 1h30. Largeur de coupe 43 cm. Réglage centralisé de la hauteur de coupe de 25 à 75 mm ",
  name: "Einhell",
  user: user4
  )
tool10.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-10.png')), filename: 'lawn-mower-10.png')
tool10.save!
