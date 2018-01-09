
def superfizzy(numbs)
  for num in numbs
    if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
      puts "SuperFizzBuzz!"
    elsif num % 3 == 0 && num % 5 != 0 && num % 7 == 0
      puts "SuperFizz!"
    elsif num % 3 != 0 && num % 5 == 0 && num % 7 == 0
      puts "SuperBuzz!"
    elsif num % 3 == 0 && num % 5 == 0 && num % 7 != 0
      puts "FizzBuzz!"
    elsif num % 3 == 0 && num % 5 != 0 && num % 7 != 0
      puts "Fizz!"
    elsif num % 3 != 0 && num % 5 == 0 && num % 7 != 0
      puts "Buzz!"
    elsif num % 3 != 0 && num % 5 != 0 && num % 7 == 0
      puts "Super!"
    else
      puts num
    end
  end
end


#superfizzy(10)

def modular_algebra(num)
  factors = Array.new
  factors += (1..num).select { |n| num % n == 0}
  string = ""
  if factors.include?(7)
    string += "Super"
  end
  if factors.include?(3)
    string += "Fizz"
  end
  if factors.include?(5)
    string += "Buzz"
  end
  if string.length != 0
    puts "#{string}!"
  else
    puts num
  end
end
=begin
def fizbizz(n)
  string = ""
  string += "Super" if n % 7 == 0
  string += "Fizz" if n % 3 == 0
  string += "Buzz" if n % 5 == 0
  if string.empty?
    puts n
  else
    puts string
  end
end
fizbizz(1..100)
=end
def superfizzy(num)
  for num in 1..num
    modular_algebra(num)
  end
end

superfizzy(1000)
