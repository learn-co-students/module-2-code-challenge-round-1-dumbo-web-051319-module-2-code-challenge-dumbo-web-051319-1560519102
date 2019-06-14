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
#
# restaurant_1 = Restaurant.create({name:"Marios",address:"1019 Wayfair ln"})
# restaurant_2 = Restaurant.create({name:"Luigi",address:"1010 Dominoes street"})
# restaurant_3 = Restaurant.create({name:"Wario",address:"20233 High rd"})
# restaurant_4 = Restaurant.create({name:"Bowzer",address:"6660 Fyah drive"})


pepperroni = Pizza.create!({name:"Pepperroni",ingredients:"pepperroni,cheese",restaurant_id:restaurant_1.id})
cheese = Pizza.create!({name:"Supa chesse",ingredients:"Mad cheese",restaurant_id:restaurant_2.id})
hawiann_pizza = Pizza.create!({name:"Hawiann Pizza",ingredients:"pepperroni,cheese", restaurant_id:restaurant_3.id})
bacon = Pizza.create!({name:"Bacon Licious",ingredients:"bacon,cheese",restaurant_id:restaurant_4.id})
