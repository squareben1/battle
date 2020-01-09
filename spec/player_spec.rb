require 'player'

describe 'Player' do 
  it 'should return players name' do 
    subject = Player.new("Ash")
    expect(subject.name).to eq "Ash"
  end
end 