require 'rails_helper'

feature 'user sees list of other users' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:user_2) { FactoryGirl.create(:user) }
  let!(:user_3) { FactoryGirl.create(:user, is_student: false) }
  let!(:user_4) { FactoryGirl.create(:user, is_student: false) }

  scenario 'student sees list of tutors' do
    login_as(user)
    visit users_path

    expect(page).to have_content "Connect with tutors near you"
    expect(page).to have_content user_3.first_name
    expect(page).to have_content user_3.city
    expect(page).to have_content user_3.state
    expect(page).to have_content user_3.location
    expect(page).to have_content user_4.first_name
    expect(page).to have_content user_4.city
    expect(page).to have_content user_4.state
    expect(page).to have_content user_4.location
  end

  scenario 'tutor sees list of students' do
    login_as(user_3)
    visit users_path

    expect(page).to have_content "Connect with students near you"
    expect(page).to have_content user.first_name
    expect(page).to have_content user.city
    expect(page).to have_content user.state
    expect(page).to have_content user.location
    expect(page).to have_content user_2.first_name
    expect(page).to have_content user_2.city
    expect(page).to have_content user_2.state
    expect(page).to have_content user_2.location
  end
end
