
feature "Hitpoint display" do
  scenario "User can submit HP points and see them" do
    sign_in_and_play
    expect(page).to have_content "Canard has 50HP!"
  end

  scenario "User can see own HP points" do
    sign_in_and_play
    expect(page).to have_content "Jennifer has 50HP!"
  end
end

feature "Deduct hitpoints" do
  scenario "User's hitpoints are deducted when attacked" do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    expect(page).to have_content "Canard has 40HP!"
  end
end
