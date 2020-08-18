require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"
## Before an employee is created, AR should automatically create a random (8 character string) password.

@store2.employees.create(first_name: "Lorelei", last_name: "Gaines", hourly_rate: 67)

puts Employee.where(first_name: 'Markus').pluck("password") 