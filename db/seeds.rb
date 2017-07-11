require 'faker'

Product.destroy_all
Review.destroy_all
User.destroy_all

admin = User.create(username: 'admin', email: 'admin@gmail.com', password: 'adminpass', admin: true)
5.times do |index|
  user = User.create!(
  email: Faker::Internet.email,
  username: Faker::Internet.user_name,
  password: 'password',
  admin: false
  )
end

20.times do |index|
  product = Product.create!(
  name: Faker::Coffee.blend_name,
  description: Faker::Coffee.notes,
  price: Faker::Number.decimal(2),
  origin: Faker::Pokemon.location,
  species: Faker::Pokemon.name,
  family: Faker::Pokemon.move,
  care: Faker::StarWars.quote
  )
    Faker::Number.between(5, 10).times do |index|
    product.reviews.create!(
      content: Faker::RickAndMorty.quote,
      location: Faker::FamilyGuy.location,
      user_id: User.all.sample.id
    )
  end
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
p "Created #{Review.count} products"
