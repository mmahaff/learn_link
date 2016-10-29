# require 'rails_helper'
# include Warden::Test::Helpers
#
# feature 'adding microposts' do
#   let!(:user) {FactoryGirl.create(:user)}
#   let!(:micropost) {FactoryGirl.create(:micropost)}
#
#   scenario 'authenticated user can make post to profile page' do
#     login_as(user)
#     visit user_path(current_user)
#     fill_in 'Write new post', with: user.micropost.content
#     click_button 'Post'
#
#     expect(page).to have_content user.micropost.content
#   end
# end
