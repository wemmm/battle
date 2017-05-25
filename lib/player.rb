require 'app'

class Player

  def initialize(battle = Battle.new)
    @battle = battle
  end

  def gives_name
    @battle.player_1_name
  end

end
