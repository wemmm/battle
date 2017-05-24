
 feature "Testing user enter names" do
   scenario "Allows users to submit names and see them on a screen" do
     visit '/'
     fill_in :player_1_name, with: "Jennifer"
     fill_in :player_2_name, with: "Canard"
     click_button 'Submit'
     expect(page).to have_content "Jennifer vs. Canard"
   end
 end
