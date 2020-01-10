require 'spec_helper'
require 'player'

feature 'Switch turns' do 
  context 'seeing the current turn' do 
    scenario 'start of game' do 
      sign_in_and_play
      expect(page).to have_content "Ash's turn"
    end 

    scenario 'P2s turn' do 
      sign_in_and_play
      click_on 'Attack'
      expect(page).not_to have_content "Ash's turn"
      expect(page).to have_content "Brock's turn"
    end 
  end 


end 