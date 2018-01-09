require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class AgesTest < Minitest::Test

	def setup
		@data = [
		  ['Frank', 33],
		  ['Stacy', 15],
		  ['Juan', 24],
		  ['Dom', 32],
		  ['Steve', 24],
		  ['Jill', 24]
		]
	end

	def get_ages
		#
		#YOUR CODE HERE
		#
	end

	def get_names_by_age
		#
		#YOUR CODE HERE
		#
	end

	def create_age_hash
		#
		#YOUR CODE HERE
		#
	end

	def test_get_ages
		assert_equal get_ages, [33,15,24,32,24,24]
	end	

	def test_get_names_by_age
		assert_equal get_names_by_age, ['Stacy', 'Juan', 'Steve', 'Jill', 'Dom', 'Frank']
	end

	def test_create_age_hash
		assert_equal create_age_hash, {24 => ['Juan', 'Steve', 'Jill'], 15 => ['Stacy'], 33 => ['Frank'], 32 => ['Dom']}
	end
end