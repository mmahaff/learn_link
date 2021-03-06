require 'rails_helper'

feature 'user signs in' do
  context 'as an authenticated user I want to sign in' do
    let!(:user) { FactoryGirl.create(:user) }

    scenario 'user signs in successfully' do
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'

      expect(page).to have_content('LearnLink')
      expect(page).to have_content('Your Profile')
      expect(page).to have_content('People Near You')
      expect(page).to have_content('Conversations')
      expect(page).to have_content('Log Out')
      expect(page).to have_content('Welcome back!')


    end

    scenario 'a nonexistent email and password is supplied' do
      visit root_path

      click_link 'Sign In'
      fill_in 'Email', with: 'nobody@example.com'
      fill_in 'Password', with: 'wrongpassword'

      expect(page).to have_content('Forgot your password?')
      expect(page).to_not have_content('Welcome back!')
      expect(page).to_not have_content('Log Out')
    end

    scenario 'an existing email with the wrong password is denied access' do
      visit '/users/sign_in'

      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: 'dogcatmeowwoof'
      click_button 'Sign In'

      expect(page).to have_content('Forgot your password?')
      expect(page).to_not have_content('Log Out')
    end

    scenario 'an already authenticated user cannot re-sign in' do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign In'

      expect(page).to have_content('Log Out')
      expect(page).to_not have_content('Sign In')
    end
  end
end
