
 feature "Testing user enter names" do
   scenario "Allows users to submit names and see them on a screen" do
     visit '/'
     fill_in :player_1_name, with: "Jennifer"
     fill_in :player_2_name, with: "Canard"
     click_button 'Submit'
     expect(page).to have_content "Jennifer vs. Canard"
   end
 end

 feature "Hitpoint display" do
   scenario "User can submit HP points and see them" do
     visit '/'
     fill_in :player_1_name, with: "Jennifer"
     fill_in :player_1_HP, with: 50
     fill_in :player_2_name, with: "Canard"
     fill_in :player_2_HP, with: 50
     click_button 'Submit'
     expect(page).to have_content "Opponent has 50HP!"

   end
 end
