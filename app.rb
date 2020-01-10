require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions 

  get '/' do 
    erb :index
    
end 

post '/names' do 
  $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
  redirect '/play'
end 

get '/start' do 
  @game = $game
  erb :start
end 

get '/play' do 
  @game = $game
  if @game.game_over?
    erb :end_game
  else  
    erb :play
  end 
end 

get '/attack' do
  @game = $game
  @game.attack
  erb :attack
end

get '/switch-turns' do
  @game = $game
  @game.switch_turns
  redirect '/play'
end

# start the server if ruby file executed directly
run! if app_file == $0
end 