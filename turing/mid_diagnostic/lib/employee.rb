class Employee
  attr_reader :name, :age, :salary

  def initialize(person_data = {})
    @name = person_data[:name]
    @age =  person_data[:age]
    @salary = person_data[:salary].delete("$").delete(",").to_i
  end
end
