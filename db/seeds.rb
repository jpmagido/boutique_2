# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all
	Item.destroy_all
	User.destroy_all
end


def item_creation
	5.times do
		Item.create(name: "parfum#{Faker::Number.digit}", price: Faker::Number.number(digits: 3), description: "#{Faker::Quote.famous_last_words}")	
	end
end

def user_creation
	User.create(email: "jpmagido@me.com", password: "blablabla")	
end

def perform
	destroy_all
	user_creation
	item_creation
	puts "Seed done :)"
end

perform