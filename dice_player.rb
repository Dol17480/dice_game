class DicePlayer
  attr_reader :name, :dice

  def initialize(name, dice)
    @name = name
    @dice = dice
  end

  def roll_dice
    @rolled_dice = []
    for die in @dice
      @rolled_dice << die.roll  
    end
    return @rolled_dice
  end

  



end