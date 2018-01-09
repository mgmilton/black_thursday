#require './lib/employee'

class Department
  attr_reader :name, :employee_count, :employees

  def initialize(name = "")
    @name = name
    @employee_count = 0
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
    @employee_count += 1
  end

  def average_salary
    salaries = self.employees.map do |employee|
      employee.salary
    end
    sum = 0
    salaries.map do |salary|
      sum += salary
    end
    
    return (sum / @employee_count)
  end


end
