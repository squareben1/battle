
def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Ash'
    fill_in :player_2_name, with: 'Brock'
    click_button 'Start Game'
end 