# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#just make the dishes manually with their price and their naem

Order.destroy_all
OrderItem.destroy_all
User.destroy_all
Item.destroy_all
Location.destroy_all
ItemLocation.destroy_all

Item.create(name: "Pot Roast", price: 10.00) #should these have the 00's or not? should these have dollar signs?
Item.create(name: "Pad Thai", price: 9.00)
Item.create(name: "Chicken Tikka Masala", price: 11.00)
Item.create(name: "Tacos", price: 8.00)

Location.create(city: "Seattle") #create a few locations?
Location.create(city: "Bellevue")
Location.create(city: "Kirkland")
Location.create(city: "Tukwila")

kevin = User.create(name: "Kevin", username: "kevin123@gmail.com", password_digest: "password123")
bob = User.create(name: "Bob", username: "Bob242@gmail.com", password_digest: "password232!!")
ryan = User.create(name: "Ryan", username: "Ryan1994@gmail.com", password_digest: "password981")
todd = User.create(name: "Todd", username: "todd456@gmail.com", password_digest: "password1996")

Order.create(date_of_order: Date.new, user_id: kevin.id)
Order.create(date_of_order: Date.new, user_id: bob.id)
Order.create(date_of_order: Date.new, user_id: ryan.id)
Order.create(date_of_order: Date.new, user_id: todd.id)

#have to give a user an order.

#??**Your goal is to make sure you have enough data to play around with once you get your app up and running. Five to ten instances of each model, as well as the corresponding relationships should be enough. You can always add more later.

#then seed it and when go in console do item.all and it will be in there.

#potroast = Item.first in the console.

#doing item.order in the console will show me what items are on the order.

#when rendering view item.name
