#Part 1: Taking Advantage of Ruby's Smart Collections

#Question 1 Using Variable Method Arguments
def first_and_last(*arg)
  puts arg[0]
  puts arg[-1] if arg.length > 1
end
first_and_last("on", "off", "now")
first_and_last("hello")

#Question 2 Using Map and Join

animals = ["dog", "cat", "goat", "capybara"]

animals_cap = animals.map { |animal| animal.capitalize }
animals_string = animals_cap.join(", ")
puts animals_string

# Question 3 Dangers of ! Methods
# The convention is that bang (!) methods are 'destructive' and therfore,
# a bit more dangerous. Hence, there are many more !-less methods.
# When someone wants to change the a user's input to let's say downcase
# then I see the value in using a bang method. I would not use the shuffle!
# method on an array detailing the orded outcome of a race.

#Part 2: Taking Advantage of Ruby's Smart Strings
# 1. Special Characters in Strings
#1a. To escape a character with a string, is to print the literal character utilizing a backslash before it.
#1b. 3 characters needed to escape: '(apostrophe) ""(quotation marks) \ (backslash)
string = %Q{Matt
5\'10\"}
puts string

# Splitting Strings
array = string.split
puts array

# Poking at Bytes
"Matt".each_byte {|byte| puts byte}
