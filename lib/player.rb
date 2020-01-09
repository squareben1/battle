
class Player

  attr_accessor :name, :hit_points

  HIT_POINTS = 100

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
<<<<<<< HEAD

=======
>>>>>>> bc5035c1599b3c97327679b6c1884a4e8b70c830
    @hit_points = hit_points
  end 

  def attack(player)
    player.receive_damage
  end 

  def receive_damage
    @hit_points -= 10
  end 

end 