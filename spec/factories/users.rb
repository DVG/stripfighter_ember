FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@example.com" }
    password "foobarbaz"
    password_confirmation { |u| u.password }
  end
end