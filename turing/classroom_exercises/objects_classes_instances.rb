class Buildings
end

buildings_1 = Buildings.new
buildings_2 = Buildings.new
buildings_3 = Buildings.new

p "Building: #{buildings_1.object_id}"
p "Building: #{buildings_2.object_id}"
p "Building: #{buildings_3.object_id}"

class Refrigerator
  attr_reader :brand,
              :color,
              :contents,
              :temp

  attr_writer :brand,
              :color,
              :contents,
              :temp

  def iniitialize (brand, color, contents, temp)
    @brand = brand
    @color = color
    @contents = contents
    @temp = temp
  end

  def temperature_in_celsius
    "The temperature in your #{@brand} fridge is #{(@temp - 32) * 5.0/9.0}"
  end
  def keep_on_diet(name)
    "You shouldn't eat that, #{name}. Oh what the hell, you do you."
  end

  def add_item(item)
    @contents << item
  end

  def color=(color)
    @color = color
  end

  def change_temp(temp)
    if temp.class == Integer
      @temp = temp
    else
      "ERROR"
    end
  end
end

refrigerator_1 = Refrigerator.new("Maytag", "white", 36, ['leftover pizza', 'brocolli'])
puts refrigerator_1.color
refrigerator_1.color = "tie dye"
puts refrigerator_1.color

=begin
puts refrigerator_1.contents.inspect
refrigerator_1.add_item("carrots")
puts refrigerator_1.contents.inspect
=end

class Person
  attr_reader :alive_ness,
              :birth_year,
              :language,
              :name

  def initialize (name, birth_year, language, alive_ness)
    @name       = name
    @birth_year = birth_year
    @language   = language
    @alive_ness = alive_ness
  end



end

person_1 = Person.new("Megan", 1988, "English", true)
person_2 = Person.new("Matt", 1988, "American English", true)
person_3 = Person.new("Amy Winehouse", 1983, "British English", false)

puts person_1.name

p "Person: #{person_1.inspect}"
p "Person: #{person_2.inspect}"
p "Person: #{person_3.inspect}"
