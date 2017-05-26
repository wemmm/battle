

class Player

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints)
    @name = name
    @hitpoints = hitpoints.to_i
  end

  def attack(target)
    target.damage
  end

  def damage
    @hitpoints -= 10
  end
end
