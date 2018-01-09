# Practice using the map nethod by creating an
# array of evens.

def evenzz
  numbers = [1,2,3,4,5]
  even_numbers =[]
  numbers.map do |x|
    if number.odd?
      nil
    else
      number
    end
  end.compact
end

def evenzz
  numbers = [1,2,3,4,5]
  numbers.map do |num|
    num if num.even?
  end.compact
end
evens = evenzz

#practice with find_all method
def find_t
 names = ["Taylor", "Fred", "Bob", "Terry", "Self"]
 names.find_all do |name|
   name[0] == "T"
 end
end


#answer
def first_t
  names = ["Taylor", "Fred", "Bob", "Terry", "Self"]
  names.find_all do |name|
    nam.start_with?("T")
    #names.chars.first == "T"
    #names.chars[0] == "T"
  end
end
