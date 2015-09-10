require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

def create_building
  puts "What is your building's name?"
    name = gets.strip
  puts "What is your building's address?"
    address = gets.strip
    building = Building.new(name,address)
  add_units_to_building(building)
end

def add_units_to_building(building)
  puts "How many units?"
  units = gets.strip.to_i
  units.times do
    building.apartments << create_apartment
  end
  building.list_units
end

def create_renter
  puts "What is your renter's name?"
    name = gets.strip
  puts "What is your renter's credit score?"
    credit_score = gets.strip
  puts "What is your renter's annual salary?"
      annual_salary = gets.strip
  Renter.new(name,credit_score,annual_salary)
end

def create_apartment
  puts "What is your apartment's name?"
    name = gets.strip
  puts "What is your apartment's square feet?"
    sqft = gets.strip
  puts "How many bedrooms are there?"
    bedrooms = gets.strip
  puts "How many bathrooms are there?"
    bathrooms = gets.strip
  Apartment.new(name,sqft, bedrooms, bathrooms)
end

create_building
