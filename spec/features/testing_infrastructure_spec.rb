feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Can allow players to enter their names and see them on screen' do
    visit('/')
    expect(page).to have_content 'Player names'
  end

end
