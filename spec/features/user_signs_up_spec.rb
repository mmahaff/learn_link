require 'rails_helper'

feature 'user creates account' do
  context 'As an unauthenticated user, I want to sign up' do

    scenario 'user signs up successfully as student' do
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: "Sally"
      fill_in 'Last Name', with: "Smith"
      choose('Student')
      fill_in 'Email', with: "hello@hello.com"
      fill_in 'Password', with: "password"
      fill_in 'Password confirmation', with: "password"
      click_button 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
      expect(page).to have_content('Log Out')

    end

    scenario 'user signs up successfully as tutor' do
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with: "Sally"
      fill_in 'Last Name', with: "Smith"
      choose('Tutor')
      fill_in 'Email', with: "hello@hello.com"
      fill_in 'Password', with: "password"
      fill_in 'Password confirmation', with: "password"
      click_button 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
      expect(page).to have_content('Log Out')

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
