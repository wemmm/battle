
feature "Players can switch turns" do
  scenario "players switch turns after attack" do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    expect(page).to have_content("It's Canard's turn!")
  end

  scenario "page initially shows player 1's turn" do
    sign_in_and_play
    expect(page).to have_content("It's Jennifer's turn!")
  end
end
