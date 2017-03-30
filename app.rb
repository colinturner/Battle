require 'sinatra/base'
require 'shotgun'
require './lib/player'

class Battle < Sinatra::Base

  set :session_secret, 'super'

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    p params
    $player1 = Player.new(params["Player 1"])
    $player2 = Player.new(params["Player 2"])
    redirect '/play'
  end

  get '/play' do
    # $p1_health = 100
    # $p2_health = 100
    erb(:play)
  end

  get '/attack' do
    $player1.attack($player2)
    erb :attack
  end

  run! if app_file == $0
end
