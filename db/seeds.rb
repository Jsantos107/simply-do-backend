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
user21 = User.create(username:"Mari", password:"1021")


L1 = List.create(title: "PJ", description:"07-05", done: false, user: user77)
L2 = List.create(title: "P", description:"07", done: true, user: user77)
L3 = List.create(title: "P", description:"07", done: false, user: user21)
L4 = List.create(title: "P", description:"07", done: false, user: user21)


I1 = Item.create(title: "JP", description:"2017", done: false, list: L1)
I5 = Item.create(title: "P", description:"17", done: false, list: L1)
I2 = Item.create(title: "J", description:"05", done: true, list: L2)
I3 = Item.create(title: "K", description:"07", done: false, list: L3)
I4 = Item.create(title: "A", description:"03", done: false, list: L4)


