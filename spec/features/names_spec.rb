
 feature "Testing user enter names" do
   scenario "Allows users to submit names and see them on a screen" do
     sign_in_and_play
     expect(page).to have_content "Jennifer vs. Canard"
   end
 end
