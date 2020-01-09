
feature 'Show P2 hit points' do 
  scenario 'see P2s HP' do 
    sign_in_and_play
    expect(page).to have_content 'Brock HP = 100'
  end
end 