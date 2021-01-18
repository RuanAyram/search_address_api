# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '#### USERS'
User.create!(
  name: 'Ruan Kaylo',
  email: 'ruan.kaylo@gmail.com',
  password: '123456789'
)

User.create!(
  name: 'Mussum Ipsum',
  email: 'mussum_ipsum@teste.com',
  password: '123456789'
)
