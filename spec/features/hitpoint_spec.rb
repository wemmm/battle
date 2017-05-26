
feature "Hitpoint display" do
  scenario "User can submit HP points and see them" do
    sign_in_and_play
    expect(page).to have_content "Opponent has 50HP!"
  end
end

feature "Deduct hitpoints" do
  scenario "User's hitpoints are deducted when attacked" do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    expect(page).to have_content "Opponent has 40HP!"
  end
end
