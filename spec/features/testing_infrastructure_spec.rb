feature 'Testing players' do
  scenario 'Can add names via form and see them' do
    sign_in_and_play
    expect(page).to have_content 'James Vs Phil'
  end
  scenario 'Will hit points after submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Phil HP: 100'
  end
end

feature 'Attacking' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'James attacked Phil'
    expect(page).to have_content 'Phil HP: 90'
  end
end
