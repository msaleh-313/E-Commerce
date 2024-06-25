# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

gold_category = Category.find_or_create_by(name: "Gold")
pottery_category = Category.find_or_create_by(name: "Pottery")

Product.find_or_create_by(name: "Silver Necklace", price: 180.00, description: "Exquisite silver necklace", category: nil)
Product.find_or_create_by(name: "Diamond Ring", price: 500.00, description: "Luxurious diamond ring", category: nil)
Product.find_or_create_by(name: "Gold Bracelet", price: 120.00, description: "Stylish gold bracelet", category: gold_category)


Product.create(name: "Pottery Bowl", price: 30.00, description: "Artisan pottery bowl", category: pottery_category)
Product.find_or_create_by(name: "Pottery Mug", price: 25.00, description: "Hand-painted pottery mug", category: pottery_category)
Product.find_or_create_by(name: "Pottery Plate Set", price: 40.00, description: "Set of decorative pottery plates", category: pottery_category)
# create always attempts to create a new record,
# find_or_create_by first checks if a record exists
# with matching attributes before deciding to create a new one.
