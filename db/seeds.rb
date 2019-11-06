require 'faker'

CATEGORIES = %w[chinese italian japanese french belgian].freeze

puts 'Generating seeds...'
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: CATEGORIES.sample,
    phone_number: Faker::Number.number(digits: 10)
  )
  restaurant.save
end
puts 'Seeding finished!'
