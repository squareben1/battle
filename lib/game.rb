require_relative 'player'

class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @player_1 = player_1
    @player_2 = player_2
  end 

  def attack(player=opponent_of(@current_turn))
    player.receive_damage
  end 

  def player_1 #could replace with attr_reader, 
    @player_1
  end 

  def player_2
    @player_2
  end 

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end 

  # private 

  def opponent_of(current_player)
    @players.select { |player| player != current_player }.first
  end 

  def game_over?
    @current_turn.hit_points == 0 
  end 


end 