# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |count| 
	Rest.create(name: Faker::Name.name, address: Faker::Address.street_address, user_id: count + 1, category: "Mexican") 
end

10.times do |count|
	Rest.create(name: Faker::Name.name, address: Faker::Address.street_address, user_id: count + 1, category: "Chinese")
end

10.times do |count|
	Rest.create(name: Faker::Name.name, address: Faker::Address.street_address, user_id: count + 1, category: "Thai")
end

10.times do |count|
	Rest.create(name: Faker::Name.name, address: Faker::Address.street_address, user_id: count + 1, category: "Italian")
end

10.times do |count|
	Rest.create(name: Faker::Name.name, address: Faker::Address.street_address, user_id: count + 1, category: "Mediterranean")
end


