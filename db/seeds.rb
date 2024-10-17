# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants = [
  { name: "Happy Rajah", address: "7 Boundary St, Quatre Bornes", phone_number: "020 7420 9320", category: "chinese" },
  { name: "Zoulu", address: "20 Sir Vigile Naz St, Port Louis E2 7JE", phone_number: "020 7420 2093", category: "belgian" },
  { name: "royal ", address: "20 curepipe St, Curepipe E2 7JE", phone_number: "020 7420 9320", category: "French" },
  { name: "KFC", address: "Tribecca St, Ebene", phone_number: "020 7420 9320", category: "Japanese" },
  { name: "Happy Eater", address: "palma st, Savanne", phone_number: "020 7420 9320", category: "italian" },

]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
