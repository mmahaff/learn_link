require 'factory_girl'

FactoryGirl.define do
  factory :location do
    sequence(:name_of_location) { |n| "thisplace#{n}" }
  end
end
