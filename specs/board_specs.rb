require('minitest/autorun')
require('minitest/rg')
require_relative('../board')
require_relative('../players')

class BoardSpec < MiniTest::Test


  # def test_squares()
  #   board = Board.new()
  #   assert_equal([], board.squares)
  # end

  def test_number_of_squares
    squares = Board.new()
    assert_equal(16, squares.count)
  end


  def test_check_snake
    squares = Board.new()
    assert_equal(14, squares.snakes)
  end

  def test_snake_causes_slide
    squares = Board.new()
    players = Players.new("James", 14)
    position = players.position()
    new_position = squares.slide(position)
    players.position = new_position
    assert_equal(5, players.position)
  end

  def test_ladder_causes_climb
    squares = Board.new()
    players = Players.new("James", 2)
    position = players.position()
    new_position = squares.climb(position)
    players.position = new_position
    assert_equal(10, players.position)
  end

  def test_end_game
    squares = Board.new()
    players = Players.new("Julia", 16)
    position = players.position()
    new_position = squares.end(position)
    players.position = new_position
    assert_equal("You return triumphant from the realm of snakes and ladders!", players.position)
  end
end