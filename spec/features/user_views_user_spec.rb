require 'rails_helper'
require 'spec_helper'
include Warden::Test::Helpers

feature 'authenticated user visits a user profile page' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:user_2) { FactoryGirl.create(:user, is_student: false)}

  scenario 'an authenticated student clicks link and is taken to show page for given tutor' do

    login_as(user)
    visit users_path

    click_link user_2.first_name
    expect(page).to have_content user_2.first_name
    expect(page).to have_content user_2.location
    expect(page).to have_content user_2.city
    expect(page).to have_content user_2.state
  end
  scenario 'an authenticated tutor clicks link and is taken to show page for given student' do

    login_as(user_2)
    visit users_path

    click_link user.first_name
    expect(page).to have_content user.first_name
    expect(page).to have_content user.location
    expect(page).to have_content user.city
    expect(page).to have_content user.state
  end
end
