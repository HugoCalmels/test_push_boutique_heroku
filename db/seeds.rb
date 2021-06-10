# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	20.times do 
    i = Item.create!(
      title: Faker::Mountain.name,
      price_cents: rand(5000..100_000).to_i,
      description: Faker::Marketing.buzzwords

    )
    i.errors.messages
  end
	
puts "%" * 50
puts "           Base de données remplie !"
puts "%" * 50
