require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.new(name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store1.save
store2 = Store.new(name:"Whistler", annual_revenue: 1260000, mens_apparel: true, womens_apparel: false)
store2.save
store3 = Store.new(name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
store3.save

@mens_stores = Store.where(mens_apparel: true)

puts @mens_stores

@mens_stores.each do |store| 
					puts "#{store.name} : #{store.annual_revenue}"
	 			  end


@womens_stores = Store.where("annual_revenue < 1000000" , womens_apparel: true )

@womens_stores.each do |store| 
					puts "#{store.name} : #{store.annual_revenue}"
	 			  end