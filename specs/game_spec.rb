require 'minitest/autorun'
require 'minitest/rg'
require_relative '../dice_player'
require_relative '../dice'
require_relative '../game'

require 'pry-byebug'

class TestGame < Minitest::Test

  def setup
    @player1_dice = [Dice.new(6), Dice.new(6)]
    @dice_player1 = DicePlayer.new("David", @players_dice1)

    @player2_dice = [Dice.new(6), Dice.new(6)]
    @dice_player2 = DicePlayer.new("Alex", @players_dice2)
    @game =Game.new([@dice_player1, @dice_player2], 2)
    @game.round_scores[0] = [6,8]


  end


    def test_game_starts_with_2_players
      assert_equal(2, @game.number_of_players)
    end

    def test_game_current_player_starts_as_player_1

      assert_equal(@dice_player1, @game.current_player)
    end



    def test_can_update_current_player
      @game.update_current_player
      assert_equal(@dice_player2, @game.current_player)
    end



    def test_can_get_round
      assert_equal(1, @game.current_round)

    end

    def test_can_move_to_next_round
      @game.next_round
      assert_equal(2, @game.current_round)
    end 
    
    # def game_ends_when_rounds_complete

    # end

    def test_players_score_can_be_got
        player1_score = @game.round_scores[0][0]
        player2_score = @game.round_scores[0][1]
        assert_equal(6, player1_score)
        assert_equal(8, player2_score)

    end

    # def test_can_store_round_score
    #   player1_score = @game.round_scores[0]
    #   player2_score = @game.round_scores[1]
    #   assert_equal()
    #   assert_equal
    # end

    def test_player_can_take_turn
      score1 = @game.current_player.roll_dice
      @game.update_current_player
      score2 = @game.current_player.roll_dice
      scores[current_round] << [score1, score2]
      @game.store_score(scores)
      assert_equal(!nil, @game.round_scores[0])
      assert_equal(@dice_player2, @game.current_player)
    end
    


    def test_players_score_stored

    end
    




end