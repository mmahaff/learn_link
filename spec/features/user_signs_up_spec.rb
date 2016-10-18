require 'rails_helper'

feature 'user creates account' do
  context 'As an unauthenticated user, I want to sign up' do
    let!(:user) { FactoryGirl.create(:user) }

    scenario 'user signs up successfully' do
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: user[:first_name]
      fill_in 'Last Name', with: user[:last_name]
      fill_in 'Email', with: user[:email]
      fill_in 'Password', with: user[:password]
      fill_in 'Password confirmation', with: user[:password]
      click_button 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
      expect(page).to have_content('Sign Out')

    end

    scenario 'required information is not supplied' do
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: ''
      fill_in 'Last Name', with: ''
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
      fill_in 'Password confirmation', with: ''
      click_button 'Sign up'

      expect(page).to have_content("First name can't be blank")
      expect(page).to have_content("Last name can't be blank")
      expect(page).to have_content("Email can't be blank")
      expect(page).to have_content("Password can't be blank")
    end
  end
end
