# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  User.destroy_all
  
  User.create!(username: 'Grady')
  User.create!(username: 'Vanessa')
  User.create!(username: 'JenKen')

  Response.destroy_all

  Response.create!(text: 'The volcano was quite invigorating, we were totally happy.')
  Response.create!(text: 'Populating databases are quite the struggle.  I have to say, this was not what I expected.')
  Response.create!(text: 'My fingers are moving but nothing is happening.')

  Polls.destroy_all

  Poll.create!(title: 'volcano')
  Poll.create!(title: 'databases')
  Poll.create!(title: 'mystery')
 
  Question.destroy_all

  Question.create!(text: 'How was the volcano?')
  Question.create!(text: 'How was the volcano?')
  Question.create!(text: 'How was populating the database?')
  Question.create!(text: 'How was populating the database?')
  Question.create!(text: 'What is the mystery?')
  Question.create!(text: 'What is the mystery?')

end