require 'minitest/autorun'
require 'minitest/rg'
require_relative '../dice_player'
require_relative '../dice'
require 'pry-byebug'

class TestDicePlayer < Minitest::Test

  def setup 
  @players_dice = [Dice.new(6), Dice.new(6)]
  @dice_player = DicePlayer.new("David", @players_dice)
  
  end

 def test_player_has_name
    @test_name = @dice_player.name
    assert_equal("David", @test_name)
  end

  def test_player_holds_dice
    @test_player_dice = @dice_player.dice

    assert_equal(2, @test_player_dice.count)
  end

  def test_player_can_roll_dice
    @dice_roll = @dice_player.roll_dice
    assert_equal(2, @dice_roll.count)
  end

 





 



  



end