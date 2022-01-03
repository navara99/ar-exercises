require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create({name: "Surrey", annual_revenue: 22400, mens_apparel: false, womens_apparel: true})
Store.create({name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false})
Store.create({name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true})

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

def print_stores(stores)
  stores.each { |store|
  puts "Store: #{store.name} Revenue: #{store.annual_revenue}"
  }
end

print_stores(@mens_stores)
puts "----------"
print_stores(@womens_stores)




