class Game

  attr_reader :current_player, :current_round, :round_scores

  def initialize(players, rounds)
      @players = players
      @current_player = players[0]
      @rounds = rounds
      @current_round = 1
      @round_scores = [[]]

  end

  def number_of_players
    return @players.count
  end

  def update_current_player
    @current_player = @players.rotate![0]
  end

  def next_round
    @current_round += 1
  end

  def store_score(scores)
    @round_scores[current_round] << scores
  end
  

end