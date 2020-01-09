
feature 'attacks player' do 
  scenario 'as P1 attack P2' do 
    sign_in_and_play
    click_on 'Attack'
  expect(page).to have_content 'Ash has attacked Brock!'
  end 
end 