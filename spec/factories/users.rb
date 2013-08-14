FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@example.com" }
    sequence(:username) {|n| "user_#{n}" }
    password "foobarbaz"
    password_confirmation { |u| u.password }
    factory :user_with_comics do
      ignore do
        comics_count 1
      end
      after :create do |user, factory|
        create_list :comic, factory.comics_count, user: user
      end
    end
  end
end
