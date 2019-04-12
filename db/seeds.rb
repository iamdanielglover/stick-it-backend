# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Sofia93")
user2 = User.create(username: "daN93_IS_awesOme")

cat1 = Category.create(name: "Health", color: "pink", user: user1)
cat2 = Category.create(name: "Business", color: "blue", user: user1)
cat3 = Category.create(name: "Social", color: "yellow", user: user1)
cat4 = Category.create(name: "Appointments", color: "green", user: user1)
cat5 = Category.create(name: "Health", color: "pink", user: user2)
cat6 = Category.create(name: "Business", color: "blue", user: user2)
cat7 = Category.create(name: "Social", color: "yellow", user: user2)
cat8 = Category.create(name: "Appointments", color: "green", user: user2)

Note.create(title: "hello", content: "blablabla", category: cat1)
Note.create(title: "hi", content: "blabla", category: cat2)
Note.create(title: "wow", content: "heyaaaa", category: cat2)
Note.create(title: "note", content: "grooooovy", category: cat3)
Note.create(title: "crazy", content: "woooooooo", category: cat4)
Note.create(title: "doctor", content: "crazytimes", category: cat5)
