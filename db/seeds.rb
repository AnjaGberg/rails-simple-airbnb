# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

4.times do |flat|
  Flat.create!(
    name: Faker::Hipster.sentence(word_count: 3),
    address: Faker::Address.full_address,
    description: Faker::Hipster.paragraph(sentence_count: 2),
    price_per_night: rand(39..118),
    number_of_guests: rand(2..6)
  )
  puts "Flat #{flat} done"
end

puts 'All flats created'
