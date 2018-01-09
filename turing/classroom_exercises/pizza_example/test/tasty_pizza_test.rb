require "minitest/autorun"
require "./lib/tasty_pizza"
# require './RakeFile'

class TastyPizzaTest < Minitest::Test
  def test_za_is_tasty
    assert_equal "mmmm 'za", TastyPizza.new.nom
  end
end
