
feature "allows player 1 to attack player 2" do
  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content("Opponent has 40HP")
  end
end
