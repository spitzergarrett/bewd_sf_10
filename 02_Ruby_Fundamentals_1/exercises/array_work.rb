#array_work

cars = ["tesla", "ford", "dodge", "dodge"]

#size determines the number of strings in an array
puts "#{cars} has #{cars.size} strings"

#push puts a string at the end of an array
puts "adds toyota into the array #{cars.push("toyota") } "

#shift eliminates a string in the beginning of an array
#puts "removes toyota from the array #{cars.shift("toyota")}"

#pop removes the last item of an array
puts "removes dodge from the end of the array #{cars.pop}"

#unshift puts an item at the beginning of an array
puts "adds toyota to the front of an array #{cars.unshift("toyota")}"

#uniq removes duplicates in an array
puts "I got rid of an extra dodge in my array because it was a duplicate #{cars.uniq}"
