require './lib/calculator'
require 'minitest/autorun'
require 'minitest/pride'


class CalculatorTest < Minitest::Test
  def test_it_exists
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_it_starts_with_total_zero
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_adds_integers_to_my_total
    calculator = Calculator.new
    calculator.add(9)

    assert_equal 9, calculator.total
  end

  def test_it_can_clear

    calculator = Calculator.new
    calculator.clear
    assert_equal 0, calculator.total
  end
end
