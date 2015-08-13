require 'pry'
require 'pry-byebug'

def get_love_interest
  puts "who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}? \n"
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer
    when "yes"
      puts "Hooray! Call #{love_interest}"
    when "no"
      puts "Boooo.  Call #{love_interest}!"
    else
      puts "You did not put a valid answer"
      puts "Please put 'Yes' or 'No' \n"
      binding.pry
      capture_love_interest_response(love_interest)
  end
end

### This is where we call methods to run our script

get_love_interest
