require 'rails_helper'

feature 'User ca follow another user' do
  let(:user)     { create(:user) }
  let(:followee) { create(:user) }

  before do
    sign_in user
    visit user_path(followee)
  end

  scenario 'shows the follow button' do
    expect(page).to have_text 'Follow'
  end

  scenario 'allows user to follow a followee' do
    click_link 'Follow'
    expect(page).to have_text 'Unfollow'
    expect(user.friends.count).to eql 1
  end

  context 'Already following a followee' do
    before do
      click_link 'Follow'
    end

    scenario 'allows user to unfollow ' do
      expect(page).to have_text 'Unfollow'
      click_link 'Unfollow'
      expect(user.friends.count).to eql 0
    end
  end
end
