require('minitest/autorun')
require('minitest/rg')
require_relative('../players')
require_relative('../die')

class PlayersSpec < MiniTest::Test

  def test_player_exists
    player = Players.new("Amy", 1)
    assert_equal("Amy", player.name)
  end

  # def test_player_position
  #   player = Players.new("Amy", 1)
  #   assert_equal(2, player.update_position) 
  # end  

  def test_updated_position
    player = Players.new("Amy", 1)
    die = Die.new()
    assert_equal(4, player.updated_position)
  end

end
