require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StateCapitalsTest < Minitest::Test

	def setup
		@states = {"Oregon" => "OR",
			"Alabama" => "AL",
			"New Jersey" => "NJ",
			"Colorado" => "CO"}

		@capitals = {"OR" => "Salem",
			"AL" => "Montgomery",
			"NJ" => "Trenton",
			"CO" => "Denver"}
	end

	def get_capital(state_name)
    if @states[state_name] == nil
      return "Unknown"
    else
		   @capitals[@states[state_name]]
    end
		#YOUR CODE HERE
		#
	end

	def get_state(capital)
    if @capitals.key(capital) == nil
      return "Unknown"
		else
      @states.key(@capitals.key(capital))
    end
		#YOUR CODE HERE
		#
	end

	def get_state_info
    state_info = {}
    @states.each_key do |state|
      state_info[state] = {abbreviation: @states[state],  capital: @capitals[@states[state]]}
    end
    state_info
	end

	def test_get_capital_by_full_state_name
		assert_equal get_capital("Oregon"), "Salem"
		assert_equal get_capital("New Jersey"), "Trenton"
	end

	def test_handle_unknown_state
		assert_equal get_capital("Virginia"), "Unknown"
	end

	def test_create_state_info_hash

		assert_equal get_state_info,
			{
     			"Oregon" => {abbreviation: "OR", capital: "Salem"},
     			"Alabama" => {abbreviation: "AL", capital: "Montgomery"},
     			"New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
     			"Colorado" => {abbreviation: "CO", capital: "Denver"}
    		}
    end

end
