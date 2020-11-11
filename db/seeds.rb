# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding started..."

Flat.destroy_all

4.times do
  Flat.create!(
    name: Faker::BossaNova.song,
    address: Faker::Address.full_address,
    description: Faker::TvShows::Friends.quote,
    price_per_night: rand(20..1000),
    number_of_guests: rand(1..8)
  )
end

puts "seeding ended..."
