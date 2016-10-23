require 'rails_helper'
require 'spec_helper'
include Warden::Test::Helpers

feature 'authenticated user sees a user profile page' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'an authenticated user clicks link and is taken to show page for given user' do
    login_as(user)
    visit users_path

    click_link user.first_name
    expect(page).to have_content user.first_name
    expect(page).to have_content user.last_name
    expect(page).to have_content user.location
    expect(page).to have_content user.city
    expect(page).to have_content user.state
    expect(page).to have_content user.email
  end
end
