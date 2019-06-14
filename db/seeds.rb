# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all
Pizza.destroy_all
 
# Restaurant.create!([{
#   name: "Sottocasa NYC",
#   address: "298 Atlantic Ave, Brooklyn, NY 11201",
# },
# {
#   name: "PizzArte",
#   address: "69 W 55th St, New York, NY 10019",
# },
# {
#   name: "San Matteo NYC",
#   address: "1559 2nd Ave, New York, NY 10028"
# }])

restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
restaurant3 = Restaurant.create(name: "San Matteo NYC", address: "1559 2nd Ave, New York, NY 10028")


Pizza.create(name: "Cheese", ingredients: "cheese", restaurant_id: restaurant1.id)
Pizza.create(name: "Pepporoni", ingredients: "pepperoni", restaurant_id: restaurant1.id)
Pizza.create(name: "Grandma Slice", ingredients: "tomato", restaurant_id: restaurant1.id)
Pizza.create(name: "Cheese", ingredients: "cheese", restaurant_id: restaurant2.id)
Pizza.create(name: "Buffalo Chicken", ingredients: "chicken", restaurant_id: restaurant2.id)
Pizza.create(name: "Cheese", ingredients: "cheese", restaurant_id: restaurant3.id)
Pizza.create(name: "Pepporoni", ingredients: "pepperoni", restaurant_id: restaurant3.id)
Pizza.create(name: "Hawaiin", ingredients: "pineapple", restaurant_id: restaurant3.id)




