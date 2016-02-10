# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

50.times do

cat_faker = ["chinese", "italian", "japanese", "french", "belgian"]

name = Faker::Book.title
address = Faker::Team.state
phone_number = Faker::Number.number(4).to_i
category = cat_faker[rand(0..4)]

Restaurant.create!(name: name, address: address, phone_number: phone_number, category: category)

end

Restaurant.all.each do |restaurant|
  rand(1..5).times do
    content = Faker::Hipster.sentences(1)
    rating = rand(0..5)
    Review.create!(content: content, rating: rating, restaurant: restaurant)
  end
end
