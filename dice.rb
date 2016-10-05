class Dice

  attr_reader :sides
  
  def initialize(sides)
    @sides = sides
    @rolls = (1..sides).to_a
  end

  def roll
    return @rolls.sample
  end



 
end
