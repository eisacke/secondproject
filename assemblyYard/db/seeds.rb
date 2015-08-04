# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create!(user_name:"sam", email: "sam@gmx.com", password:"password", password_confirmation:"password")
user2 = User.create!(user_name:"emily", email: "emily@gmx.com", password:"password", password_confirmation:"password")
user3 = User.create!(user_name:"keith", email: "keith@gmx.com", password:"password", password_confirmation:"password")
user3 = User.create!(user_name:"dami", email: "dami@gmx.com", password:"password", password_confirmation:"password")

category1 = Category.create!(language:"ruby")
category2 = Category.create!(language:"javascript")
category3 = Category.create!(language:"css")
category4 = Category.create!(language:"html")

snippet1 = Snippet.create!(contents: "h2.h2 { font-size: 4em; margin: 0 0 3em 0; border-bottom: 1px dashed black; }", search_terms: "display", name: "first code", user: user1, category_id: 1)
snippet2 = Snippet.create!(contents: "this is some more code!", search_terms: "update", name: "second code", user: user2, category_id: 2)
snippet3 = Snippet.create!(contents: "this is not code!", search_terms: "debug", name: "third code", user: user3, category_id: 3)

