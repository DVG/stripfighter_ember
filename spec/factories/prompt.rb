FactoryGirl.define do
  factory :prompt do
    sequence(:content) { |n| "Make a comic about #{n}" }
  end
end
