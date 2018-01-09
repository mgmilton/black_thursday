
#Below are the Challenges in the Loops section of the railsbridge ruby curriculum
names = ['Sally Samsonite!', 'Johnny Jameson', 'Beth Benitsky', 'Corinne Camelia']
names.each { |name| puts "Oh, hello, #{name}!"}

numbers = [4,6,5,5,10]
sum = 0
numbers.each do |num|
  sum += num
end
puts "The sum of all the numbers is #{sum}."

#Write a program that verifies whether someone can vote based
#on their supplied age.

puts "Please tell me your age (in years): "
age = gets.chomp.to_i
if age >= 18
  puts "Congratulations you can vote!"
else
  puts "Unfortantely you can't vote. Only #{18-age} more years."
end

#Write a program that plays back the message a user supplied

puts "Hello! Please provide some text: "
message = gets.chomp.to_s
puts "#{message}"

#Write a program that adds five user_supplied numbers

numbers = []
sum = 0
puts "Please provide five numbers separated by a space: "
five_num = gets.chomp.to_s
numbers = five_num.split(" ")
numbers.each do |num|
  sum += num.to_i
end
puts "The sum of your five numbers is #{sum}."

#Make a hash for the people at your table, where the key is their name,
#and the value is their favorite color
dinner_table = {
  "Eric" => "blue",
  "Delilah" => "mauve",
  "Seamus" => "chartreuese",
  "Sylvia" => "seafoam green",
}
dinner_table.each { |x, y| puts "#{x}'s favorite color is #{y}"}

#Make an array of the months in the year
months = ['January', 'February',
  'March', 'April', 'May', 'June',
  'July', 'August', 'September',
  'October', 'November', 'December']
months.each { |x| puts "#{x}"}  
