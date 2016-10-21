require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}" }
    sequence(:last_name) { |n| "Smith#{n}" }
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:password) { |n| "password#{n}" }
    is_student true
    sequence(:city) { |n| "Boston#{n}" }
    state 'SC'
    sequence(:location) { |n| "Library#{n}" }

  end
end
