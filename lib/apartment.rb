require 'pry'
require 'pry-byebug'

class Apartment

  attr_accessor :name, :sqft, :unit, :bedrooms, :bathrooms, :rent, :renter

    #instance variables are available through the class. @name is an instance variable
    def initialize(name, sqft, bedrooms, bathrooms)
      @name = name
      @sqft = sqft
      @bedrooms = bedrooms
      @bathrooms = bathrooms
      @renter = nil
      @rent = nil
    end

def not_occupied?
  renter.nil? #also renter == nil
end

#this method is inherited out of the box when you create a new class.
#I can override it and define it myself like this
def to_s
  "Apartment #{name} has #{sqft} square feet"
end
end
