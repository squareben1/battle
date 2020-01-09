
class Player

<<<<<<< HEAD
  attr_accessor :name, :hit_points

  HIT_POINTS = 100

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
<<<<<<< HEAD
    @hit_points = hit_points
  end 

  def attack(player)
    player.receive_damage
  end 

  def receive_damage
    @hit_points -= 10
  end 
=======
    @hit_points = HIT_POINTS
  end 

  def attack
    @hit_points -= 10
  end
>>>>>>> fada3f7ef8da4026eb2b1ee39af380e453925e77

end 