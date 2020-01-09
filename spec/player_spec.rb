require 'player'

describe 'Player' do 
  subject(:ash) { Player.new("Ash") }
  subject(:brock) { Player.new("Brock") }

  describe '#name' do 
    it 'should return players name' do 
      expect(ash.name).to eq "Ash"
    end
  end 

  describe '#hit_points' do 
    it 'returns the HP' do 
      expect(brock.hit_points).to eq Player::HIT_POINTS
    end 
  end  

  describe '#attack' do 
    it 'damages player' do 
      expect(brock).to receive(:receive_damage)
      ash.attack(brock)
    end 
  end 

  describe '#receive_damage' do 
    it 'reduces the player HP' do 
      expect { brock.receive_damage }.to change { brock.hit_points }.by(-10)
    end 
  end 
end 
