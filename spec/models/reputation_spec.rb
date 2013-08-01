require 'spec_helper'

describe Comic do
  let(:user) { create(:user) }
  subject { create(:comic, user: user) }
  context "upvotes" do
    before { subject.upvote(user) }
    it { subject.score.should == 1 }
  end
  context "downvotes" do
    before { subject.downvote(user) }
    it { subject.score.should == -1 }
  end
end

describe User do
  subject { create(:user) }
  let(:comic) { create(:comic, user: subject) }
  context "10 Karma per comic upvote" do
    before { comic.upvote(subject) }
    it { subject.karma.should == 10 }
  end
  context "-10 Karma per comic downvote" do
    let(:other_user) { create(:user) }
    before do
      comic.upvote(subject)
      comic.downvote(other_user)
    end
    it { subject.karma.should == 0 }
  end
end
