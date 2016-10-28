require 'rails_helper'
include Warden::Test::Helpers

feature 'authenticated user edits profile page' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user updates profile information' do
    login_as(user)
    visit edit_user_path(user)
    fill_in 'City', with: user.city
    fill_in 'Home Library', with: user.location
    fill_in 'Tell us about yourself', with: user.about_me
    fill_in 'What languages do you know', with: user.language
    fill_in 'Subjects', with: user.subject
    click_button 'Edit'

    expect(page).to have_content user.city
    expect(page).to have_content user.location
    expect(page).to have_content user.about_me

  end
end
