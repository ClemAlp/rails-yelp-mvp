# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do

  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  2.times do

    review = Review.new(
      rating: rand(0..5),
      content: Faker::File.mime_type
    )
    review.restaurant = restaurant
    review.save
  end
end

