require 'faker'
require 'open-uri'

puts 'clean db'
Tag.destroy_all
Message.destroy_all
Chatroom.destroy_all
Item.destroy_all
User.destroy_all
puts 'db cleaned'

puts 'creating 8 fake users'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1542156822-6924d1a71ace?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Tiergarten',
    street: 'Kurfürstenstraße',
    zipcode: 10785,
    streetnumber: 58,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Kreuzberg',
    street: 'Rudi-Dutschke-Straße',
    zipcode: 10969,
    streetnumber: 26,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Mitte',
    street: 'Alte Schönhauser Str.',
    zipcode: 10119,
    streetnumber: 46,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Mitte',
    street: 'Tucholskystraße',
    zipcode: 10117,
    streetnumber: 30,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Moabit',
    street: 'Birkenstraße',
    zipcode: 10559,
    streetnumber: 19,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1475823678248-624fc6f85785?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Charlottenburg',
    street: 'Kantstraße',
    zipcode: 10623,
    streetnumber: 25,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Kreuzberg',
    street: 'Bergmannstraße',
    zipcode: 10961,
    streetnumber: 21,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'creating 1 user'
file = URI.open('https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    username: Faker::Internet.username,
    role: "user",
    location: 'Friedrichshain',
    street: 'Simon-Dach-Straße',
    zipcode: 10245,
    streetnumber: 28,
    city: 'Berlin'
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save
puts 'created 1 user'

puts 'Finished Users!'

puts 'creating tags'

tags = ['kitchen', 'pet', 'household', 'leisure', 'game', 'furniture', 'books', 'ikea', 'plants', 'tech']

tags.each do |name|
  tag = Tag.new(
    name: name
    )
  tag.save
end

puts 'created tags'

tags = Tag.all

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1585837575652-267c041d77d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Cat Toys',
  description: 'Cat toys my cats never play with, but are still good fun',
  price: 1,
  user: User.first,
  tags: [Tag.second, Tag.fifth],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1504194008492-c55ffe34e18d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', ]
item = Item.new(
  title: 'Beside Lamp',
  description: 'White lamp that could be used on a desk or nightstand',
  price: 2,
  user: User.second,
  tags: [Tag.third, tags[5], tags[7]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.pexels.com/photos/2417857/pexels-photo-2417857.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500']
item = Item.new(
  title: 'coffe mugs',
  description: '3 ikea coffee mugs, one with chip all others good condition',
  price: 2,
  user: User.third,
  tags: [Tag.first, Tag.third],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Start-up Books',
  description: 'stack of books about doing your own start-up',
  price: 2,
  user: User.fourth,
  tags: [tags[6], tags[4]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1452639608291-23cd58f6864d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Posters',
  description: 'assortment of posters, good condition',
  price: 2,
  user: User.fifth,
  tags: [tags[2]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1553649925-9722aca87a8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'camera',
  description: 'found this old camera- still works',
  price: 2,
  user: User.fourth,
  tags: [tags[9], tags[3]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1465224414649-ceb7f1db3999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1494281232141-90a40b0b06c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Ikea Chair',
  description: 'moving need to get rid of this Ikea chair',
  price: 3,
  user: User.third,
  tags: [tags[2], tags[5], tags[7]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1572688484438-313a6e50c333?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'House Plant',
  description: 'My cat keeps chewing on this house plant so I do not want it anymore',
  user: User.last,
  price: 1,
  tags: [tags[2], tags[7], tags[8]],
  active: true
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1534889156217-d643df14f14a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1546550879-3b71f2427ae0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Rug',
  description: 'Got a new rug, getting rid of old one',
  user: User.first,
  price: 3,
  tags: [tags[2], tags[5]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1562029628-4dfc6f1c14ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1584212166146-8a6b4eb62fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Game boy',
  description: 'going through some old stuff',
  user: User.last,
  price: 3,
  tags: [tags[3], tags[4]],
  active: true
  )
photos.each  do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'
