require 'rails_helper'

feature 'user sees list of other users' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:user_2) { FactoryGirl.create(:user) }

  scenario 'sees list of other users' do
    visit users_path

    expect(page).to have_content user.first_name
    expect(page).to have_content user_2.first_name
  end
end
