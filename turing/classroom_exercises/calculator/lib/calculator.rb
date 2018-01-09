
class Calculator
  attr_reader :number1
              :number2
              :total

  def initialize(number1= 0, number2= 0)
    @number1 = number1
    @number2 = number2
    @total = 0
  end

  def total
    @total
  end
  
  def clear
    @total = 0
  end

  def add(number)
    @total += number
  end

  def subtraction
    @number1 - @number2
  end

  def division
    @number1 / @number2
  end

  def multiplication
    @number1 * @number2
  end


end
