require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total = Store.sum(:annual_revenue)
puts "Total Revenue: #{total}"

average = Store.average(:annual_revenue)
puts "Average Revenue: #{average}"

num_stores_over_million = Store.where("annual_revenue > 1000000").count()
puts "There are #{num_stores_over_million} stores generating over 1M per year in revenue."