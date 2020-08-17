require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Type in the store you want to create"
user_input = $stdin.gets.chomp.to_s
store = Store.create(
  name: "#{user_input}" 
)
puts store.errors.full_messages
