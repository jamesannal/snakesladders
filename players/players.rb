class Players 

attr_reader :name 
attr_accessor :position

  def initialize(name, position)
    @name = name
    @position = 1
  end
  
  def update_position
    @position += die.roll
  end  


end