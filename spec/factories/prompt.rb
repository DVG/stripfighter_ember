FactoryGirl.define do
  factory :prompt, aliases: [:prompt_one, :prompt_two] do
    sequence(:content) { |n| "Make a comic about #{n}" }
  end
end
