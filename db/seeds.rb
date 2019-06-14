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

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])

pizza1 = Pizza.create(name: "Pizza1", ingredients: "Tomato", restaurant_id: Restaurant.all[0][:id])
pizza2 = Pizza.create(name: "Pizza2", ingredients: "Tomato2", restaurant_id: Restaurant.all[0][:id])
pizza3 = Pizza.create(name: "Pizza3", ingredients: "Tomato3", restaurant_id: Restaurant.all[1][:id])
