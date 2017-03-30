class Game  # attacks other players

  attr_reader :players, :turn, :aggro_player, :injured_player
  attr_writer :aggro_player, :injured_player

  def initialize(player1, player2)
    @players = {player1: player1, player2: player2}
    @injured_player = player2
    @aggro_player = player1
    @turn = 0
  end

  def attack(injured_player)
    @turn.even? ? injured_player = players[:player2] : injured_player = players[:player1]
    @turn.odd? ? aggro_player = players[:player1] : aggro_player = players[:player2]
    current_player.receive_damage
    # @turn += 1
  end


end
