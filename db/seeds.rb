# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
List.destroy_all
User.destroy_all

user77 = User.create(username:"beau", password:"pj")

L1 = List.create(title: "PJ", description:"07-05", user: user77)
L2 = List.create(title: "P", description:"07", user: user77)

I1 = Item.create(title: "JP", description:"2017", list: L1)
I2 = Item.create(title: "J", description:"05", list: L2)

