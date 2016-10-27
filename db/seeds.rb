# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create!(first_name: "John", last_name: "Smith", email: "example@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_2 = User.create!(first_name: "Bob", last_name: "Smith", email: "example2@example.com",
password: 'foobar2', password_confirmation: 'foobar2', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_3 = User.create!(first_name: "Sally", last_name: "Armstrong", email: "example3@example.com",
password: 'foobar3', password_confirmation: 'foobar3', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_4 = User.create!(first_name: "Sarah", last_name: "Riley", email: "example4@example.com",
password: 'foobar4', password_confirmation: 'foobar4', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_5 = User.create!(first_name: "Ron", last_name: "Weasley", email: "example5@example.com",
password: 'foobar5', password_confirmation: 'foobar5', is_student: true, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_6 = User.create!(first_name: "Harry", last_name: "Potter", email: "example6@example.com",
password: 'foobar6', password_confirmation: 'foobar6', is_student: false, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_7 = User.create!(first_name: "Hermione", last_name: "Granger", email: "example7@example.com",
password: 'foobar7', password_confirmation: 'foobar7', is_student: false, city: "Somerville",
state: "MA", location: "Somerville Public Library")

user_8 = User.create!(first_name: "Michael", last_name: "Scott", email: "example8@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Scranton",
state: "PA", location: "Scranton Public Library")

user_9 = User.create!(first_name: "Pam", last_name: "Beasley", email: "example9@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_10 = User.create!(first_name: "Richard", last_name: "Wylie", email: "example10@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_11 = User.create!(first_name: "Annie", last_name: "Woodworth", email: "example11@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_12 = User.create!(first_name: "Neville", last_name: "Longbottom", email: "example12@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_13 = User.create!(first_name: "Pavila", last_name: "Patel", email: "example13@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_14 = User.create!(first_name: "Jim", last_name: "Halpert", email: "example14@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Somerville",
state: "MA", location: "Somerville Public Library")

user_15 = User.create!(first_name: "Stan", last_name: "Smith", email: "example15@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_16 = User.create!(first_name: "Bob", last_name: "Bailey", email: "example16@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_17 = User.create!(first_name: "Sally", last_name: "Armstrong", email: "example17@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_18 = User.create!(first_name: "Margaret", last_name: "Riley", email: "example18@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_19 = User.create!(first_name: "Fred", last_name: "Weasley", email: "example19@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_20 = User.create!(first_name: "Harrison", last_name: "Woodworth", email: "example20@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_21 = User.create!(first_name: "Katherine", last_name: "Granger", email: "example21@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Somerville",
state: "MA", location: "Somerville Public Library")

user_22 = User.create!(first_name: "Mike", last_name: "Scott", email: "example22@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Scranton",
state: "PA", location: "Scranton Public Library")

user_23 = User.create!(first_name: "Pamela", last_name: "Baker", email: "example23@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_24 = User.create!(first_name: "Rebecca", last_name: "James", email: "example24@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Boston",
state: "MA", location: "Boston Public Library")

user_25 = User.create!(first_name: "Anne", last_name: "Carter", email: "example25@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Boston",
state: "MA", location: "Boston Public Library")

user_26 = User.create!(first_name: "Nathan", last_name: "Trotter", email: "example26@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: true, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_27 = User.create!(first_name: "Vincent", last_name: "James", email: "example27@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Cambridge",
state: "MA", location: "Cambridge Public Library")

user_28 = User.create!(first_name: "Ian", last_name: "Mackenzie", email: "example28@example.com",
password: 'foobar', password_confirmation: 'foobar', is_student: false, city: "Somerville",
state: "MA", location: "Somerville Public Library")
