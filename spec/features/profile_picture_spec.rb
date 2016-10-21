require 'rails_helper'
include Warden::Test::Helpers

feature 'profile photo' do
  let!(:user) { FactoryGirl.create(:user) }

  context 'As a user I visit my edit profile page' do
    scenario 'user uploads a profile photo successfully' do
      login_as(user)
      visit user_path(user)
      click_link 'Edit Profile'
      fill_in 'City', with: user.city
      attach_file 'user_profile_photo', "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Edit'

      expect(page).to have_xpath(
      "//img[contains(@src, 'photo.png')]"
      )
    end
  end
end
