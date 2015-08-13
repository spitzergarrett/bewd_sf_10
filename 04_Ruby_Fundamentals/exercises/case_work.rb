require 'pry'

def the_case(grade)
  case grade.downcase
    when "a"
    "You aced the class"
    when "b"
    "Solid Job!"
    when "c"
    "Sometimes a hard C is excellent!"
    else
    "Stop drinking in my class"
  end
end

puts the_case("C")
