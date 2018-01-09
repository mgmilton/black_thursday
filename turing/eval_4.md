## Module 1 Week 4 Diagnostic

This exercise is intended to help you assess your progress
with the concepts and techniques we've covered during the week.

For these questions, write a short description or snippet of code that meets
the requirement. In cases where the question mentions a "given"
data value, use the variable `given` to refer to it (instead of re-writing
the information).


### Ruby Syntax & Style

1. **Given the following hash:**

  ```ruby
  cacti = {
    with_barbs: {prickly_pear: "Flat and oval-shaped, fuzzy barbs"},
    without_barbs: {firestick: "Slender stems, slightly toothed"}
  }
  ```
  **Return "Slender stems, slightly toothed":**

  `cacti[:without_barbs][:firestick]`

  **Add a new key `:ingen` with the value of `"Tall with arms, short barbs"` to the hash that `:with_barbs` points to:**

  `cacti[:with_barbs][:ingen] = "Tall with arms, short barbs"`

2. **Given the array `new_decor = ["lava lamp", "rope lights", "paper lantern", "rope lights"]`, dynamically create a hash with array elements as the keys and the number of times they appear in the array as the values:**

  ```ruby
  decor_stock = Hash.new(0)
  new_decor.each do |decoration|
    decor_stock[decoration] += 1
  end
  ```

  **OR**

  ```ruby
  new_decor.reduce(Hash.new(0)) do |decor_stock, decoration|
    decor_stock[decoration] += 1
    decor_stock
  end
  ```

  **OR**

  ```ruby
  new_decor.each_with_object(Hash.new(0)) do |decoration, decor_stock|
    decor_stock[decoration] += 1
  end
  ```

3. **Give one difference between Modules and Classes.**

  * Classes can have state and thus can be instantiated; Modules do not & cannot
  * Modules can be included / extended, classes cannot
  * Classes can be inherited from (can serve as a superclass), Modules cannot
  * Superclass of class is `Module`, Superclass of Module is `Object`

4. **Give one difference between Mixing in Modules and Class Inheritance**

  * Mixins are always modules; classes only inherit from other classes
  * A class can include many mixins but can only inherit from one other class.
  * Because mixins are always modules, they only introduce behavior (methods), and never state (attributes), whereas class inheritance can introduce both

5. **Defining Modules**

  First, create a module `Doughy` which defines a method
  `has_carbs?` that always returns `true`.

  ```ruby
  module Dough
    def has_carbs?
      true
    end
  end
  ```

6. **Using Modules**

  Update `Pizza` to use your new `Dough` module to gain
  the defined `has_carbs?` behavior.

  ```ruby
  class Pizza
    include Dough
    def tasty?
      true
    end
  end
  ```


### Breaking Logic into Components

1. **Refactoring**

  Given the following snippet of code:

  ```ruby
  class Encryptor
    def date_offset
      date = Time.now.strftime("%d%m%y").to_i
      date_squared = date ** 2
      last_four_digits = date_squared.to_s[-4..-1]
      [last_four_digits[-4].to_i, last_four_digits[-3].to_i, last_four_digits[-2].to_i, last_four_digits[-1].to_i]
    end
  end

  Encryptor.new.date_offset
  ```

  Lots of possibilities here, but some good options include:

  **Extract Methods**

  ```ruby
  class Encryptor
    def date
      Time.now.strftime("%d%m%y").to_i
    end

    def date_squared
      date ** 2
    end

    def last_four_digits
      date_squared.to_s[-4..-1]
    end

    def date_offset
      [last_four_digits[-4].to_i, last_four_digits[-3].to_i, last_four_digits[-2].to_i, last_four_digits[-1].to_i]
    end
  end
  ```

  **Implement an Enumerable**

  ```ruby
  class Encryptor
    def date_offset
      date = Time.now.strftime("%d%m%y").to_i
      date_squared = date ** 2
      last_four_digits = date_squared.to_s[-4..-1]
      last_four_digits.chars.map { |d| d.to_i }
    end
  end
  ```

  **Extract Class**

  ```ruby
  class DateOffset
    def date
      Time.now.strftime("%d%m%y").to_i
    end

    def date_squared
      date ** 2
    end

    def last_four_digits
      date_squared.to_s[-4..-1]
    end

    def offsets
      last_four_digits.chars.map(&:to_i)
    end
  end

  class Encryptor
    def date_offset
      DateOffset.new.offsets
    end
  end
  ```  

2. **Refactoring Colors I Like**

  Given the following snippet of code:  

  ```ruby  
  def colors_i_like  
    colors = ['red', 'blue', 'green']  
    colors.map do |color_name|  
      color = ''
      if color_name == "purple"  
        color = "purple"
      elsif color_name == "green"  
        color = "green"  
      elsif color_name == "periwinkle"  
        color = "periwinkle"  
      elsif color_name == "orange"  
        false  
      else
        false
      end
      color
    end
  end
  ```

  Show 2 refactorings you might make to improve the design of this code.  

  **Extract Method**
  ```ruby
    def colors_i_like
      colors = ['red', 'blue', 'green']
      colors.map do |color|  
        included_colors(color)
      end
    end

    def included_colors(color_name)
      color = ''
      if color_name == "purple"  
        color = "purple"
      elsif color_name == "green"  
        color = "green"  
      elsif color_name == "periwinkle"  
        color = "periwinkle"  
      elsif color_name == "orange"  
        false  
      else
        false
      end
      color
    end
    ```

    **More Efficient If/Else Statement**
    ```ruby
    def colors_i_like
      colors = ['red', 'blue', 'green']
      colors.map do |color|  
        included_colors(color)
      end
    end

    def included_colors(color)
      likable_colors = ["purple", "green", "periwinkle"]
      if likable_colors.include?(color)
        color
      else
        ''
      end
    end
  ```  

  **Better Conditional**

  ```ruby
  def colors_i_like  
    colors = ['red', 'blue', 'green']  
    colors.map do |color_name|  
      if color_name == "purple" || color_name == "green" || color_name == "periwinkle"
        color_name
      end
    end
  end
  ```

  **Create Class**
  ```ruby
    class PrintColors  

      def initialize  
        @colors = ["red", "blue", "green"]
      end

      ...
    end
  ```


### Enumerables

1. **With the following code, use `group_by` to generate a hash where the houses are the keys and the values are the array of the appropriate students.**

  ```ruby
  students.group_by do |student|
    student.house
  end
  ```

2. **Using `reduce`, create a hash that counts how many times each letter appears in the string, "The quick brown fox jumps over the lazy dog." The keys should be the letters, and the values should be how many times they appear.**

  ```ruby
  pangram = "The quick brown fox jumps over the lazy dog."
  pangram_letters = pangram.split(" ").join.split('')

  pangram_letters.reduce(Hash.new(0)) do |letter_frequency, letter|
    letter_frequency[letter] += 1
    letter_frequency
  end
  ```

### Test Driven Development  

1. **What are the four types of tests? What are they each used for?**

  **Unit** - tests a method that runs independently  
  **Integration** - tests a method that relies on other methods to complete the task
  **Feature** - tests a piece of cohesive functionality, usually from the user interface level
  **Acceptance** - tests a collection of functionality that altogether gives business value

2. **Build implementation code to make the following tests pass:**

  ```ruby
  require 'minitest/autorun'
  require 'minitest/pride'
  require './lib/member'
  require './lib/meetup'

  class MeetupTest < Minitest::Test

    def test_member_names_returns_a_collection_of_member_full_names
      jada = Member.new({first_name: "Jada", last_name: "Julian"})
      gabriella = Member.new({first_name: "Gabriella", last_name: "Gonzalez"})
      ski_group = Meetup.new("Ski Club")

      ski_group.add_member(jada)
      ski_group.add_member(gabriella)

      assert_equal ["Jada Julian", "Gabriella Gonzalez"], ski_group.members
    end

  end
  ```

  ```ruby
  class Meetup

    attr_reader :members

    def initialize(name)
      @name = name
      @members = []
    end

    def add_member(member)
      @members << "#{member.first_name} #{member.last_name}"
    end

  end
  ```

### Desktop Environment 

1. **Load Paths and Requires**

  Any 2 of:

  ```ruby
  require "./lib/file_one"
  ```

  ```ruby
  require_relative "file_one"
  ```

  ```ruby
  $LOAD_PATH.unshift(File.dirname(__FILE__)) # add lib directory to load path
  require "file_one"
  ```
