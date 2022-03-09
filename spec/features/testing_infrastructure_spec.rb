feature 'Testing players' do
  scenario 'Can add names via form and see them' do
    visit('/')
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Phil'
    click_button('Submit')
    expect(page).to have_content 'James Vs Phil'
  end
  scenario 'Will hit points after submitting names' do
    visit('/')
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Phil'
    click_button('Submit')
    expect(page).to have_content 'Phil: 100HP'
  end

end