require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test
  def test_it_exits
    department = Department.new
    assert_instance_of Department, department
  end

  def test_it_has_name
    department = Department.new("Accounting")
    assert_equal "Accounting", department.name
  end

  def test_count_returns_employees_in_department
    department = Department.new("Accounting")
    assert_equal 0, department.employee_count
  end

  def test_add_employee_method_returns_count
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "$50,000"})
    assert_equal 1, department.add_employee(employee_1)
  end

  def test_add_employee_operates_for_multiple_employees
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "$50,000"})
    employee_2 = Employee.new({name: "Bobbie Jaeger", age: 30, salary: "$100,000"})
    department.add_employee(employee_1)
    assert_equal 2, department.add_employee(employee_2)
    assert_equal [employee_1, employee_2], department.employees
  end

  def test_average_salary_returns_average_sal
    department = Department.new("Accounting")
    employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "$50,000"})
    employee_2 = Employee.new({name: "Bobbie Jaeger", age: 30, salary: "$100,000"})
    department.add_employee(employee_1)
    department.add_employee(employee_2)
    assert_equal 75000, department.average_salary
  end
end
