require('minitest/autorun')
require('minitest/rg')
require_relative('../die')

class DieSpec < MiniTest::Test

  # def test_die
  #   die = Die.new()
  #   assert_equal(6, die.class) 
  # end

  def test_counter
    die = Die.new
    assert_equal(6, die.counter)
  end

  def test_roll_die
    die = Die.new
    assert_equal(3, die.roll)
  end
end