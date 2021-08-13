def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Zainab'
  fill_in :player_2, with: 'Graeme'
  click_button 'Submit'
end