# first echo meeting on classes and test driven development


class Student
  attr_reader :name :age :hair_color # shortcut for the getter method
  attr_writer :name :age :hair_color # shortcut for the setter method
  attr_accessor :name :age :hair_color # shortcut for both getter and setter method, allowing for reading and writing outside the class

  def iniitialize
    @name = name
    @age = age
    @hair_color = hair_color
  end
# getter method
  def name
    @name
  end
# setter method
  def name=(name)
    @name = name
end


student = Student.new("Mary")
student_2 = Student.new("George")

puts student1.name
puts student2.name


array = []
4.each |x|
  array+= x.color.shuffle.sample
end
