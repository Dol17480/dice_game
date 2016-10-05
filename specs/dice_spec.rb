require 'minitest/autorun'
require 'minitest/rg'
require_relative '../dice'
require 'pry-byebug'

class TestDice < Minitest::Test

  def setup 
   @test_dice = Dice.new(6)
  end

  def test_has_number_sides
    @test_sides = @test_dice.sides
    assert_equal(6, @test_sides)
  end

  def test_can_roll_dice
    @test_roll = @test_dice.roll 
    assert_equal(Fixnum, @test_roll.class)

  end

end


