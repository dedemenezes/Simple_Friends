# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Generating 5 users"
User.destroy_all

User.create!(email:"babi@padovani.com", password: 123456)
User.create!(email:"lea@troina.com", password: 123456)
User.create!(email:"maira@menezes.com", password: 123456)
User.create!(email:"marat@troina", password: 123456)
User.create!(email:"vilma@lustosa.com", password: 123456)
puts User.count
puts 'zo/'