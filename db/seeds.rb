# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Pikachu", description: "First edition from Ash himself", price: 100000)
Product.create(name: "Charmander", description: "Great for cooking meals or heating your home!", price: 150000)
Product.create(name: "Mew", description: "Not sure what it does, but it's real cute and psychic", price: 10000000)