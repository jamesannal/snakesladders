class Die

attr_reader :die

  def initialize()
  end

  def roll
    @die = 1 + rand(6)
  end

end