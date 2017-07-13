require 'faker'

Product.destroy_all
Review.destroy_all
User.destroy_all

admin = User.create(username: 'admin', email: 'admin@gmail.com', password: 'adminpass', admin: true)
user = User.create(username: 'user', email: 'user@gmail.com', password: 'userpass', admin: false)

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
Product.create!(
  name: 'XEROGRAPHICA AIR PLANT',
  description: 'Sometimes called "King of the Air Plants," the Xerographica stands alone, with a star shaped form, bright minty green color, and curling leaves. Perfect as an accent piece on a shelf, in a glass vessel as a table centerpiece, or in a large terrarium, the Tillandsia Xerographica is a stunner. Naturally growing on the crooks of trees in jungle climates, air plants provide an easy way to bring a bit of the tropics into your home, and can even flower when they reach maturity.  ',
  price: 22.00,
  origin: 'Southern Mexico, Guatemala and El Salvador',
  species: 'T. xerographica',
  family: 'Bromeliaceae',
  care: 'Place Air Plants in medium to bright, indirect light. Protect your plant from too much direct sun, and from temperatures below 50 and above 90 degrees.

  Air plants thrive in humid climates, and love weekly misting, especially when kept in bright spaces.  Submerge the entire plant in room temperature water once a month for 10 - 20 minutes.  After soaking, shake excess water from the plant and set it upside-down on a cloth or paper-towel in a bright spot to promote drying. Take care to ensure your air plant dries fully, ideally within four hours. ',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/tillansdsia_Xerographica_air_plant-small_1024x1024.jpg?v=1447450435'
  )
Product.create!(
  name: 'STRICTA AIR PLANT',
  description: 'The Tillandsia Stricta Air Plant is known for its bright pink flowers and deep green to purple, densely clustered leaves. We select from the Gigante and Black Beauty cultivars, which stand alone on a shelf or in glass as a centerpiece, but can also easily fit into a terrarium or be mounted to wood or cork. Naturally growing on the crooks of trees in jungle climates, air plants provide an easy way to bring a bit of the tropics into your home, and can even flower when the plant reaches maturity. ',
  price: 16.00,
  origin: 'Trinidad, Brazil, Venezuela, Paraguay, Uruguay, Guyana, and northern Argentina.',
  species: 'Tillandsia stricta',
  family: 'Bromeliaceae',
  care: 'Tillandsia Stricta care is low maintenance and relatively easy like most other Tillandsia. This particular plant thrives in humidity with bright filtered light, or a nice shady tree.  This air plant can survive in temperatures ranging from 50-90 degrees Farenheit, and like most Tillandsia species they do not like extreme cold or heat.  The Tillandsia Stricta likes fresh moving air; so make sure they are in a well-ventilated space (this can even be in a slightly shaded spot outside, if you live in a warmer climate). You can water your Stricta once or twice a week depending on your environment by submerging the air plant for around 30 minutes. Make sure once you remove the plant from watering, that you gently shake off any excess water from the leaves as this can sit in the plant and cause rot (avoid the flower if it is blooming).',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/tillansdsia_stricta_black_beauty_air_plant_1024x1024.jpg?v=1487622380'
  )
Product.create!(
  name: 'HOYA OBOVATA',
  description: 'Hoya obovata is one of our very favorite specimen plants. It has large, deep green oval-shaped leaves, often speckled with flecks of white and pink. The leaves emerge on long tendrils that shoot out dramatically from the base of the plant. Over time, these vines grow to be quite long, eventually setting sweet-smelling flowers that look like little clusters of pink stars. Hoya obovata will happily climb up a stake or trellis, or set your pot in a hanger or on high shelf and let the vines cascade.
  Like all members of the Hoya genus, Hoya obovata is semi-succulent, with thick waxy-leaves, flowers and stems -- in fact, Hoyas are sometimes called "waxplant" or "waxflower." Drought tolerant, and perfect for bright, indirect light, Hoya obovata is easy to care for, an essential member of any houseplant collection.',
  price: 32.00,
  origin: 'Native to Asia including India, China, Thailand, Malaysia, Việt Nam, and Indonesia',
  species: 'Hoya',
  family: 'Apocynaceae',
  care: 'Why it’s special: this Hoya has incredible dark green, round, lightly speckled leaves. Compared to many Hoyas, this one is relatively fast to grow and sets flower earlier than most.
  What it likes: This is one of the hardier Hoyas we’ve encountered. It still wants bright light, but is tolerant of medium light.
  What it dislikes: Over-watering; those big leaves hold a lot of water. Wait until it puckers before watering. Also dislikes direct sun, and dark drafty corners.',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/Hoya_Obovata_-_pistils_nursery_1024x1024.jpg?v=1480096388 '
  )
Product.create!(
  name: 'STRING OF HEARTS',
  description: 'Whether you call it String of Hearts, Rosary Vine or Sweetheart Vine, there\'s a lot to love about Ceropegia woodii, a flowering plant from South Africa that makes a fantastic houseplant. Its plump leaves are shaped just like little hearts, deep green in color lined with bright light blue. The new grown and stems are often tinged pink. The leaves appear on long cascading vines that hang straight down, creating an effect almost like a beaded curtain of heart-shaped leaves. String of Hearts often flowers when kept as an indoor plant - its pale magenta flowers have deep purple centers, which provide a lovely pop of color. ',
  price: 32.00,
  origin: 'Native to South Africa, Swaziland, and Zimbabwe',
  species: 'CEROPEGIA WOODII',
  family: 'Apocynaceae',
  care: 'Ceropegia woodii String of Hearts is perfect for a sunny spot in your home - it is happiest with a bit of direct sun, but bright indirect light will do. A semi-succulent, this plant is drought tolerant and simple to care for. In time, its vines can grow quite long - 4 feet or more. Hanging near a window and enjoy this sweetheart among indoor plants.',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/Ceropegia_woodii_string_of_hearts_-_pistils_nursery_1024x1024.jpg?v=1482016903'
  )
Product.create!(
  name: 'RATTLESNAKE PLANT',
  description: 'Calathea lancifolia is a perfect houseplant for pattern lovers who like to decorate wild. Its bright green, wavy leaves are striped with alternating ovals of dark green and accented by a rich purple underside. The plant gets its name from its lance-shaped foliage, and the leaves grow more elongated as the plant matures. Its bushy, compact growth habit makes it ideal as a medium sized floor plant or tabletop accent -- anywhere that needs a little extra green and a tropical feel.',
  price: 32.00,
  origin: 'Brazil',
  species: 'CALATHEA LANCIFOLIA',
  family: 'Marantaceae',
  care: 'Like most plants in the Calathea genus, the lancifolia is simple to care for, an ideal beginner\'s houseplant. Simply place the plant where it will receive medium to bright indirect light, shielding from direct sun. Water when the top 1-2" of soil feel dry, and mist periodically to maintain high humidity. ',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/Calathea_lancifolia_-_rattlesnake_plant_-_pistils_nursery_1024x1024.jpg?v=1495558539'
  )
Product.create!(
  name: 'FOXTAIL FERN',
  description: 'Asparagus densiflorus is nicknamed the "Foxtail Fern" due to its dense, fluffy plumes of bright green foliage. Native to southern Africa, the Foxtail Fern is not a true fern, but rather is a flowering perennial plant, closely related to edible asparagus. We love the way that the long "tails" of foliage look as they shoot up from the base of the plant and then arch over the sides of the pot as they grow longer. This unique growth form combined with the dense, tiny leaves make for a bright pop of color and texture in any indoor space.',
  price: 32.00,
  origin: 'Ssouthern Africa from Mozambique to South Africa',
  species: 'ASPARAGUS DENSIFLORUS',
  family: 'Asparagaceae',
  care: 'Place your Asparagus densiflorus where it will receive bright, indirect light. This plant has thick tuberous roots which store water, making it drought tolerant and simple to care for as a houseplant. Mist regularly to create a humid environment.',
  image:'https://cdn.shopify.com/s/files/1/0662/5489/products/asparagus_densiflorus_-_foxtail_fern_-_pistils_nursery_1024x1024.jpg?v=1499280362'
  )
  Faker::Number.between(5, 10).times do |index|
  Review.create!(
    content: Faker::RickAndMorty.quote,
    location: Faker::FamilyGuy.location,
    user_id: User.all.sample.id,
    product_id: Product.all.sample.id
  )
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
