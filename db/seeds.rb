# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
user1 = User.new(
  email:    "michel@example.com",
  password: "password",
  )

user2 = User.new(
  email:    "lucie@example.com",
  password: "password",
  )

tool1 = Tool.new(
  daily_price: 40,
  location:   "Le Val Andre",
  description: "autoportee et silencieuse cette tondeuse blablablab",
  name: "lawn-mower-1",
  )
tool1.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-1.jpg')), filename: 'lawn-mower-1.jpg')
tool1.save!

tool2 = Tool.new(
  daily_price: 150,
  location:   "Rennes",
  description: "Du gros du lourd pour les grandes surfaces et l'herbe haute blablablab",
  name: "lawn-mower-2",
  )
tool2.photo.attach(io: File.open(Rails.root.join('db/fixtures/tools/lawn-mower-2.jpg')), filename: 'lawn-mower-2.jpg')
tool2.save
