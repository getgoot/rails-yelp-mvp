# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# db/seeds.rb

# Clear existing data
Review.destroy_all
Restaurant.destroy_all

# Seed Restaurants
# db/seeds.rb

# Define the valid restaurant attributes
restaurant_attributes = [
  { name: "Restaurant 1", address: "Address 1", category: "chinese" },
  { name: "Restaurant 2", address: "Address 2", category: "italian" },
  { name: "Restaurant 3", address: "Address 3", category: "japanese" },
  { name: "Restaurant 4", address: "Address 4", category: "french" },
  { name: "Restaurant 5", address: "Address 5", category: "belgian" }
]

# Create restaurants with associated reviews
restaurant_attributes.each do |attributes|
  restaurant = Restaurant.create!(attributes)

  # Create reviews associated with the restaurant
  3.times do
    restaurant.reviews.create!(content: "Great!", rating: 5)
  end
end
