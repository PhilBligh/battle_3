feature 'Testing player names' do
  scenario 'Can add names via form and see them' do
    visit('/')
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Phil'
    click_button('Submit')
    expect(page).to have_content 'James Vs Phil'
  end
end