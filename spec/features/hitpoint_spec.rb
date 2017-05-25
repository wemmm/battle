
feature "Hitpoint display" do
  scenario "User can submit HP points and see them" do
    sign_in_and_play
    expect(page).to have_content "Opponent has 50HP!"
  end
end
