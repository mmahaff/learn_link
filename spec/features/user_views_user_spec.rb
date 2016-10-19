require 'rails_helper'

feature 'user sees a user profile page' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'clicks link and is taken to show page for given user' do
    visit users_path

    click_link user.first_name
    expect(page).to have_content user.first_name
    expect(page).to have_content user.last_name
    expect(page).to have_content user.email
  end
end
