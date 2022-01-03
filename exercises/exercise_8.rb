require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

class Employee
  before_create :add_password

  private

  def add_password
    self.password = "abcdefgh"
  end

end

employee1 = Employee.create({first_name: "Thar", last_name: "Navaratnam", hourly_rate: 150})
puts "The password is #{employee1.password}"



