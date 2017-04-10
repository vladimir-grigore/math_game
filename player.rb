class Player
  def initialize
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
  end

  def still_alive?
    @lives >= 1
  end
  
end
