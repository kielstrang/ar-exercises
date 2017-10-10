require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Foo", last_name: "McFoo", hourly_rate: 42)
@store1.employees.create(first_name: "Bar", last_name: "Barsson", hourly_rate: 57)
@store1.employees.create(first_name: "Baz", last_name: "O'Baz", hourly_rate: 102)

@store2.employees.create(first_name: "Qux", last_name: "McQux", hourly_rate: 42)
@store2.employees.create(first_name: "Quux", last_name: "Quuxsson", hourly_rate: 57)
@store2.employees.create(first_name: "Norf", last_name: "O'Norf", hourly_rate: 102)
