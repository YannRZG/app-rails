# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
genre = ["action","horreur","comédie","drame"]
100.times do
  movie = Movie.create!(name: Faker::Movie.title , year: rand(1900..2020), genre: genre.sample, synopsis: Faker::Lorem.words(number: 10).join(' '), director: Faker::Name.name, allocine_rating: rand(0.0..5).round(1), already_seen: false )
end
puts "100 films ont été crées"