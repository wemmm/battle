require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_player

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def attack(target)
    target.damage
  end

  def switch_turns
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

end
