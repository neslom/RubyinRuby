require 'minitest/autorun'
require 'minitest/pride'
require './array_basics'

class SimpleArrayTest < MiniTest::Test
	attr_reader :arr
	def setup
		@arr = SimpleArray.new(["a", "b", "c"])
	end

  def test_it_exists
  	assert arr 
  end

  def test_first
  	assert_equal "a", arr.first
  end

  def test_last
  	assert_equal "c", arr.last
  end

  def test_join
  	assert_equal "abc", arr.join
  	assert_equal "a-b-c", arr.join("-")
  end

  def test_count
  	assert_equal 3, arr.count
  end

  def test_counts_more_than_three
  	arr1 = SimpleArray.new([1, 2, 3, 4, 5])
  	assert_equal 5, arr1.count
  end

end