class Players 

attr_reader :name 
attr_accessor :position

  def initialize(name, position)
    @name = name
    @position = position
  end
  
  def update_position(die)
    @position += die.roll
  end  


end