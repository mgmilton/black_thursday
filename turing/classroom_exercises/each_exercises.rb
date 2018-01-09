=begin

* If you had an array of numbers, e.g. [1,2,3,4], how do you print out the
doubles of each number? Triples?
* If you had the same array, how would you only print out the even numbers?
What about the odd numbers?
* How could you create a new array which contains each number multipled by 2?
* Given an array of first and last names, e.g. ["Alice Smith", "Bob Evans",
"Roy Rogers"],  how would you print out the full names line by line?
* How would you print out only the first name?
* How would you print out only the last name?
* How could you print out only the initials?
* How can you print out the last name and how many characters are in it?
* How can you create an integer which represents the total number of characters in all the names?

=end

#1 + 2
numbers = [1,2,3,4]
numbers.each do |number|
  print number * 2
  #print number * 3
end

numbers.each do |number|
  print number if number % 2 == 0 #prints evens
 #  print number if number % 2 == 1 #prints odds
end

new_numbers = []
numbers.each do |number|
  new_numbers += number * 2
end

names = ["Alice Smith", "Bob Evans", "Roy Rogers"]
names.each do |name|
  puts "#{name}\n"
end

string_names = names.join(" ")
separated_names = string_names.split(" ")

separated_names.each do |name|
  
  puts name if name[index.to_i] % 2 == 0
    #puts name if name % 2 == 0
end
