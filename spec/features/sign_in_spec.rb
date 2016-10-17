require 'spec_helper'

feature 'user signs up' do
  context 'As an unauthenticated user, I want to sign up' do
    scenario 'user signs up successfully' do
      visit root_path
      click_link 'Sign Up'
      fill_in 'First Name', with 'Jon'
      fill_in 'Last Name', with ''

    end

    scenario 'required information is not supplied' do

    end

    scenario 'user password confirmation does not match' do

    end
  end
end
