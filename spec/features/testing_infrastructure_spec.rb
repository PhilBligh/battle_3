feature 'Testing players' do
  scenario 'Can add names via form and see them' do
    sign_in_and_play
    expect(page).to have_content 'James Vs Phil'
  end
  scenario 'Will hit points after submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Phil: 100HP'
  end

end