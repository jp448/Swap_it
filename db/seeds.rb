require 'faker'
require 'open-uri'

puts 'clean db'
Item.destroy_all
User.destroy_all
puts 'db cleaned'

puts 'creating 20 fake users'

20.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
  )
end

puts 'Finished Users!'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1585837575652-267c041d77d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Cat Toys',
  description: 'Cat toys my cats never play with, but are still good fun',
  price: 1
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1504194008492-c55ffe34e18d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', ]
item = Item.new(
  title: 'Beside Lamp',
  description: 'White lamp that could be used on a desk or nightstand',
  price: 2
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.pexels.com/photos/2417857/pexels-photo-2417857.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500']
item = Item.new(
  title: 'coffe mugs',
  description: '3 ikea coffee mugs, one with chip all others good condition',
  price: 2
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Start-up Books',
  description: 'stack of books about doing your own start-up',
  price: 2
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1452639608291-23cd58f6864d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Posters',
  description: 'assortment of posters, good condition',
  price: 2
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1553649925-9722aca87a8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'camera',
  description: 'found this old camera- still works',
  price: 2
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1465224414649-ceb7f1db3999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1494281232141-90a40b0b06c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Ikea Chair',
  description: 'moving need to get rid of this Ikea chair',
  price: 3
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1572688484438-313a6e50c333?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'House Plant',
  description: 'My cat keeps chewing on this house plant so I do not want it anymore',
  price: 1
  )
item.save
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1534889156217-d643df14f14a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1546550879-3b71f2427ae0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Rug',
  description: 'Got a new rug, getting rid of old one',
  price: 3
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'

puts 'creating 1 item'
photos = ['https://images.unsplash.com/photo-1562029628-4dfc6f1c14ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1584212166146-8a6b4eb62fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']
item = Item.new(
  title: 'Game boy',
  description: 'going through some old stuff',
  price: 3
  )
photos.each do |pic_url|
  item.photos.attach(io: URI.open(pic_url), filename: 'nes.png', content_type: 'image/png')
end
item.save
puts 'created 1 item'
