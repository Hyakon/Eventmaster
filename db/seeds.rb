# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
User.destroy_all
Attendance.destroy_all

user1 = User.new(email:'admin@yopmail.com', name:'Administrator')
user1.save

user2 = User.new(email:'paul@yopmail.com', name:'Paul')
user2.save

event = Event.new(start_date: DateTime.now + 100 , duration: 10, title: 'Party', description: 'Welcome Event', price: 5, location: 'Paris', admin: user1)
event.save

attendance = Attendance.new(event: event, user: user1)
attendance.save