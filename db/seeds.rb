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

i1 = Item.create(name: "Pot Roast", price: 10.00, description: "Made with beef") #should these have the 00's or not? should these have dollar signs?
i2 = Item.create(name: "Pad Thai", price: 9.00, description: "Made with chicken")
Item.create(name: "Chicken Tikka Masala", price: 11.00, description: "Made with zesty ass sauce")
Item.create(name: "Tacos", price: 8.00, description: "got the zing")

#seattle.location.items << certain items.

l1 = Location.create(city: "Seattle") #create a few locations?
l2 = Location.create(city: "Bellevue")
l3 = Location.create(city: "Kirkland")
l4 = Location.create(city: "Tukwila")
#this is working so that I can put certain items for certain locations.

l1.items << [i1, i2] #don't need this stuff until later. index page for locations. could make a show page where they click on location and it shows what items are there. l2.items would list it out. location.items.each show item.name, and item.price

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
