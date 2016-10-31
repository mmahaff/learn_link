require 'rails_helper'
include Warden::Test::Helpers

feature 'adding microposts' do
  let!(:user) {FactoryGirl.create(:user)}

  scenario 'authenticated user can make post to profile page' do
    login_as(user)
    visit root_path
    fill_in 'micropost_content', with: "This is post 1"
    click_button 'Post'

    expect(page).to have_content "This is post 1"
  end

  scenario 'with latest post on top' do
    login_as(user)
    visit root_path
    fill_in 'micropost_content', with: 'This is old post'
    click_button 'Post'

    fill_in 'micropost_content', with: 'This is new post'
    click_button 'Post'

    expect(page.body.index('This is new post')).to be < page.body.index('This is old post')
  end

end
