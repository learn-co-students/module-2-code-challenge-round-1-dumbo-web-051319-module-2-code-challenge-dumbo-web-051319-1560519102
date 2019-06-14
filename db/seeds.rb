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

sottocasa = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzArte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
sanmatteo = Restaurant.create(name: "San Matteo NYC", address: "1559 2nd Ave, New York, NY 10028")



pepperoni = Pizza.create(name: "Pepperoni Pizza", ingredients: "Pepperoni, Tomato Sauce and Flour", restaurant_id: sottocasa.id)
cheese = Pizza.create(name: "Cheese Pizza", ingredients: "Cheese, Tomato Sauce and Flour", restaurant_id: pizzArte.id)
bacon = Pizza.create(name: "Bacon Pizza", ingredients: "Bacon, Tomato Sauce and Flour", restaurant_id: sanmatteo.id)
