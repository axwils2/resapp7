# Create Customers
100.times do |index|
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: "customer#{index}@seed.com",
		password: 'password')
end

#Create Owners
5.times do |index|
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: "owner#{index}@seed.com",
		password: 'password',
		owner: true)
end

owners = User.where('owner = true')

owners.each do |owner|
	(3..10).to_a.sample.times do
		owner.rests << Rest.create(
			name: Faker::Book.title,
			address: Faker::Address.street_address)
	end
end

categories = ['Mexican', 'Italian', 'Indian', 'Chinese', 'Vietnamese', 'Polish',
							'Thai', 'German', 'Pub', 'American', 'Asian-Fusion', 'BBQ']

categories.map! { |category| Category.create(name: category) }

restaurants = Rest.all

restaurants.each { |restaurant| categories.sample.rests << restaurant}