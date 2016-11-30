class Board

  attr_reader :squares

  def initialize
    @squares = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  end

  def count()
    return @squares.count
  end
end