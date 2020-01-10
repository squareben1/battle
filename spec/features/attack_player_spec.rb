require 'player'

feature 'attacks player' do 
  scenario 'as P1 attack P2' do 
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'Ash has attacked Brock!'
  end

  scenario 'when P1 attacks, reduce P2s hit points' do
    sign_in_and_play
    click_on 'Attack'
    expect($game.player_2.hit_points).to eq(90)
  end

  scenario 'as P2 attack P1' do 
    sign_in_and_play
    click_on 'Attack'
    click_on 'OK'
    click_on 'Attack'
    expect(page).to have_content 'Brock has attacked Ash!'
  end

  scenario 'when P2 attacks, reduce P1s hit points' do
    sign_in_and_play
    click_on 'Attack'
    click_on 'OK'
    click_on 'Attack'
    expect($game.player_1.hit_points).to eq(90)
  end
  
end 