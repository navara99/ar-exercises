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

class Store 
  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  def must_carry_apparel
    errors.add(:mens_apparel, "or womens apparel must be true") unless mens_apparel || womens_apparel
  end

end

class Employee 
  validates :first_name, :last_name, :hourly_rate, presence: true
  validates_associated :store
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
end

puts "What is your store's name?"
store = gets.chomp

puts "Does your store sell mens apparel? (y or n)"
sells_mens_apparel = gets.chomp == "y" ? true : false

puts "Does your store sell womens apparel (y or n)?"
sells_womens_apparel = gets.chomp == "y" ? true : false

errors = Store.create({ name: store, mens_apparel: sells_mens_apparel, womens_apparel: sells_womens_apparel }).errors.full_messages

errors.each { |message|
  puts message
}



