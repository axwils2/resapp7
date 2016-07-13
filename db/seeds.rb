# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

owners = []
3.times do |i|
	owners << Owner.create(name: "Austin #{i}")
end

owners.each do |owner|
	owner.rests << Rest.create(name: "Rest Seed", address: "123 Road")
end
