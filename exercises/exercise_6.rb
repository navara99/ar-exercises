require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Tharsikan", last_name: "Navaratnam", hourly_rate: 60)
@store1.employees.create(first_name: "Yadiel", last_name: "Wright", hourly_rate: 45)
@store1.employees.create(first_name: "Katrina", last_name: "Rivers", hourly_rate: 50)

@store2.employees.create(first_name: "Adonis", last_name: "Berg", hourly_rate: 20)
@store2.employees.create(first_name: "Alondra", last_name: "Lambert", hourly_rate: 25)
@store2.employees.create(first_name: "Eliana", last_name: "Robertson", hourly_rate: 30)