require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions 

  get '/' do 
    erb :index
    
end 

post '/names' do 
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  $game = Game.new(player_1, player_2)
  redirect '/play'
end 

get '/play' do 
  # @player_1_name = $player_1.name
  # @player_2_name = $player_2.name
  # @player_1_hp = $player_1.hit_points
  # @player_2_hp = $player_2.hit_points
  @game = $game
  erb :play
end 

get '/attack' do
  # @player_1 = $player_1
  # @player_2 = $player_2
  @game = $game
  @game.attack(@game.player_2)
  @game.switch_turns
  erb :attack
end

# start the server if ruby file executed directly
run! if app_file == $0
end 