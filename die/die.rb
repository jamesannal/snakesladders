class Die

attr_reader :die

  def initialize()
    @die = [1, 2, 3, 4, 5, 6]
  end

  def counter
    @die.count
  end

  def roll
    @die = 1 + rand(6)
  end

end