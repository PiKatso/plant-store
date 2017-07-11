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

Product.create!(
  name: 'GERANIUM',
  description: 'Kokedama is a type of Japanese bonsai in which the roots of a plant are bound into a spherical form with moss. These scented, flowering geranium kokedama are intended to contain the essence of home and springtime, crafted to order by our small team. Lightly rubbing the foliage will release the plant\'s natural aroma, which -- depending on the cultivar -- evokes rose, lemon, citronella and beyond.',
  price: 48.00,
  origin: 'Southwestern China',
  species: 'PELARGONIUM',
  family: 'jungle cacti',
  care: 'Pelargonium are drought-tolerant and don\'t like sitting in wet soil! Make sure to allow your kokedama to dry slightly between waterings. The moss should feel dry to the touch and the entire ball should feel lightweight before watering. Depending on how much light the plant is receiving, this will happen about once every 1-2 weeks in summer, and once every 2-3 weeks in winter.

  In long periods of dryness, leaves and stems may crisp up, turning yellow or brown and falling off. This is okay - these plants are tough and should perk right back up with a thorough soaking.',
  image: 'https://cdn.shopify.com/s/files/1/0662/5489/products/geranium_kokedama_with_terracotta_dish_grande.jpg?v=1498673459'
  )
Product.create!(
  name: 'FLAMINGO FLOWER',
  description: 'With their heart-shaped leaves and gorgeous, long-lasting flowers, our Anthurium Kokedama are like a stunning, living bouquet -- the perfect way to show someone you love a bit of affection. Easy to care for and beautiful to behold, Anthurium Kokedama make a dynamic gift for the experienced indoor gardener and amateur alike. ',
  price: 48.00,
  origin: 'South American rainforests',
  species: 'Anthurium',
  family: 'Araceae',
  care: 'be sure that your plant is never put in a location that freezes. Frost will kill your plant. Temperatures below 55 degrees are bad for your plant and it should ideally be kept at temperatures above 70 degrees. In addition, your plant should not be allowed to get too hot. Temperatures above 90 degrees are too hot and can also harm your plant.
  Second, you have to try to ensure that your plant receives the proper amount of humidity. Humidity between 80 and 100% is ideal. But a little lower is fine as long as you water your plant regularly.
  Third, you must make sure that your plant is not exposed to direct sunlight. Direct sunshine can harm its leaves and flowers. However, you do want it to receive a fair amount of light, so that it can grow well.',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/Anthurium_Kokedama_-_White_Blush_-_Pistils_Nursery_1024x1024.jpg?v=1493244249'
  )
10.times do |index|
  product = Product.create!(
  name: Faker::Coffee.blend_name,
  description: Faker::Coffee.notes,
  price: Faker::Number.decimal(2),
  origin: Faker::Pokemon.location,
  species: Faker::Pokemon.name,
  family: Faker::Pokemon.move,
  care: Faker::StarWars.quote,
  image: ""
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
p "Created #{Review.count} reviews"
