class Game

  attr_reader :player1, :player2

  def intialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def attack(target)
    target.damage
  end

end