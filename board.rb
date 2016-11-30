class Board

  attr_reader :squares, :snakes, :ladder, :end
   

  def initialize
    @squares = (1..16).to_a
    @snakes = 14
    @ladder = 2
    @end = 16
  end

  def count()
    return @squares.count
  end

  def slide(position)
    if position == @snakes
      return update_position = 5
    else 
      return position
    end
  end

  def climb(position)
    if position == @ladder
      return update_postion = 10
    else
      return position
    end
  end

  def end(position)
    if position >= 16
      return "You return triumphant from the realm of snakes and ladders!"
    end
  end




end