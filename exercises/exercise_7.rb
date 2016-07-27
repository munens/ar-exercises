require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require 'pry'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base

	belongs_to :store, required: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :hourly_rate, inclusion: {in: [40, 200]} 
	validates :name, length: {minimum: 3 }

end

class Store < ActiveRecord::Base
	has_many :employees
	validates :annual_revenue, numericality: {greater_than_or_equal_to: 0 }

end

print "Pls enter a new store: "
store_name = gets.chomp

new_store = Store.new(name:store_name, annual_revenue: 3000000, mens_apparel: true, womens_apparel: true)
puts new_store
new_store.save
puts new_store.errors