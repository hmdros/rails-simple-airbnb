Flat.destroy_all
puts 'Cleaning database'
puts 'Populating database'
10.times do
  name = Faker::DcComics.unique.hero
  address = Faker::Address.street_name
  description = Faker::ChuckNorris.fact
  price_per_night = 100
  number_of_guests = 5
  picture_url = 'https://www.fillmurray.com/200/300'
  Flat.create!(name: name,
               address: address,
               description: description,
               price_per_night: price_per_night,
               number_of_guests: number_of_guests,
               picture_url: picture_url)
end
puts 'Done!'
