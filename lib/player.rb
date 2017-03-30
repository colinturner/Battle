class Player   # managing player hit points

  DEFAULT_HP = 100
  attr_reader :name, :hp


  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    self.hp -= 10
  end

  private
  attr_writer :hp

end
