require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  set :session_secret, 'super'

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    p params
    $game = Game.new(Player.new(params["Player 1"]), Player.new(params["Player 2"]))
    # $player1 = Player.new(params["Player 1"])
    # $player2 = Player.new(params["Player 2"])
    redirect '/play'
  end

  get '/play' do
    $game.switch_player
    # $p1_health = 100
    # $p2_health = 100
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.injured_player)
    erb :attack

    #$game.turn += 1
  end

  run! if app_file == $0
end
