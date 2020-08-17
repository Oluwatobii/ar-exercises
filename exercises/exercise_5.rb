require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "The Total revenue of all the entire company is: $#{total_revenue}"
puts "The Average annual revenue for all the stores is: $#{total_revenue/Store.count}"


stores_more_than_mil = Store.where("annual_revenue > 1000000").count
puts "There are only #{stores_more_than_mil} stores that generate more than $1M in annual sales"
