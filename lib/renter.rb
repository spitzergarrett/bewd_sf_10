require 'pry'
require 'pry-byebug'

class Renter

  attr_accessor :name, :credit_score, :annual_salary

    #instance variables are available through the class. @name is an instance variable
    def initialize(name, credit_score, annual_salary)
      @name = name
      @credit_score = credit_score
      @annual_salary = annual_salary
    end

#this method is inherited out of the box when you create a new class.
#I can override it and define it myself like this
def to_s
  "#{name} has a credit score of #{credit_score} and an annual salary of #{annual_salary}."
end
end
