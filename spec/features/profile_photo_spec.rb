require 'rails_helper'
include Warden::Test::Helpers

feature 'an authenticated user can upload a profile_photo' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'user uploads a profile photo' do
    login_as(user)
    visit edit_user_path(user.id)

    fill_in 'City', with: 'Boston'
    select 'Massachusetts', from: 'State'
    fill_in 'Home Library', with: 'Boston Public Library'
    fill_in 'Tell us about yourself', with: 'Just a little about myself'
    attach_file 'user_profile_photo', "#{Rails.root}/spec/support/images/test_profile.jpg"
    click_button 'Edit'

    expect(page).to have_xpath("//img[contains(@src, 'test_profile.jpg')]")
    expect(page).to have_content user.first_name
    expect(page).to have_content user.city
    expect(page).to have_content user.location
    expect(page).to have_content user.about_me
  end
end
