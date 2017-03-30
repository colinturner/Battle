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
    redirect '/play'
  end

  get '/play' do
    $game.switch_player

    erb(:play)
  end

  get '/attack' do
    $game.attack($game.injured_player)
    erb :attack
  end

  run! if app_file == $0
end
