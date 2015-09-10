require 'pry'
require 'pry-byebug'

class Building

  attr_accessor :name, :address, :apartments

    #instance variables are available through the class. @name is an instance variable
    def initialize(name, address)
      @name = name
      @address = address
      @apartments = []
    end

  def list_units
    puts "There are #{apartments.count} units in #{name}"
    apartments.each do |apartment|
      puts "Unit #{apartment.name} has #{apartment.bedrooms} bedrooms and #{apartment.bathrooms} bathrooms."
  end
end
