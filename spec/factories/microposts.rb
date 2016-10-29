FactoryGirl.define do
  factory :micropost do
    sequence(:content) { |n| "#{n}This is a post"}
    user nil
  end
end
