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
end