def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Jennifer"
  fill_in :player_1_HP, with: 50
  fill_in :player_2_name, with: "Canard"
  fill_in :player_2_HP, with: 50
  click_button 'Submit'
end
