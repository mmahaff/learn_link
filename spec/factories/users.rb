FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}" }
    sequence(:last_name) { |n| "Smith#{n}" }
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:password) { |n| "password#{n}" }
  end
end
