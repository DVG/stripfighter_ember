FactoryGirl.define do
  factory :comic do
    prompt_one
    prompt_two
    user
    factory :comic_with_votes do
      ignore do
        upvotes 1
        downvotes 0
      end
      after(:create) do |comic, factory|
        factory.upvotes.times do
          comic.upvote(create(:user))
        end
        factory.downvotes.times do
          comic.downvote(create(:user))
        end
      end
    end
  end
end
