require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total revenue: $#{Store.sum(:annual_revenue)}"
puts "Average revenue: $#{Store.average(:annual_revenue)}"
@count_1m = Store.where("annual_revenue >= ?", 1000000).count
puts "#{@count_1m} stores generate at least $1M annually"