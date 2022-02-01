# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
room = Room.create(name: 'FirstRoom')
user1 = User.create(name: 'FirstUser', email: 'firstUser@mail.com', password: 'pass', password_confirmation: 'pass', room: room)
user2 = User.create(name: 'SecondUser', email: 'secondUser@mail.com', password: 'pass', password_confirmation: 'pass', room: room)

message = Message.create(body: 'First message', user: user1, room: room)