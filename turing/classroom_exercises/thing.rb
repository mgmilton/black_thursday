## Exercise in loading code into pry
##
##
require 'pry'

def add_things(num_1, num_2)
  #binding.pry  pumps the brakes and opens up a pry session
  num_1 + num_2
end
binding.pry
puts add_things(5,3)
