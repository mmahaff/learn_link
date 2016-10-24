require 'rails_helper'
include Warden::Test::Helpers

feature 'authenticated user edits profile page' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user updates profile information' do
    login_as(user)
    visit edit_user_path(user)
    fill_in 'City', with: user.city
    fill_in 'Home Library', with: user.location
    click_button 'Edit'

    expect(page).to have_content user.city
    expect(page).to have_content user.location

  end
end
