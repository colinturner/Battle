class Game  # attacks other players

  attr_reader :players, :turn, :aggro_player, :injured_player
  attr_writer :aggro_player, :injured_player

  def initialize(player1, player2)
    @players = {player1: player1, player2: player2}
    @injured_player = player2
    @aggro_player = player1
    @turn = 1
  end

  def attack(injured_player)
    injured_player.receive_damage
  end

  def switch_player
    @turn.even? ? self.injured_player = players[:player1] : self.injured_player = players[:player2]
    @turn.odd? ? self.aggro_player = players[:player1] : self.aggro_player = players[:player2]
    @turn += 1
  end

end
