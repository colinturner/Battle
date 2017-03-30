class Game  # attacks other players

  attr_reader :players

  def initialize(player1, player2)
    @players = {player1: player1, player2: player2}
  end

  def attack(player)
    player.receive_damage
  end


end
