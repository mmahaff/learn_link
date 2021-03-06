require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Smith', 'Jackson') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('email@gmail.com', 'emailmil@gmail.com') }
  it { should_not have_valid(:email).when(nil, '', 'madhnl', 'mail.com', '@') }

  it 'has a matching password confirmation for the password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'differentpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end

  describe '.email' do
    it 'returns the email of the user' do
      user = FactoryGirl.create(:user, email: 'example@example.com')
        email = user.email

        expect(email).to eq('example@example.com')
    end
  end

end
