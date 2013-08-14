class Comic < ActiveRecord::Base
  attr_accessible :title, :prompt_one_id, :prompt_two_id, :user, :image

  belongs_to :prompt_one, class_name: "Prompt", foreign_key: "prompt_one_id"
  belongs_to :prompt_two, class_name: "Prompt", foreign_key: "prompt_two_id"
  belongs_to :user
  mount_uploader :image, ComicUploader

  has_reputation :votes, :source => :user, :aggregated_by => :sum,
    :source_of => {:reputation => :karma, :of => :user}

  def upvote(user)
    self.add_or_update_evaluation(:votes, 1, user)
  end

  def downvote(user)
    self.add_or_update_evaluation(:votes, -1, user)
  end

  def score
    self.reputation_for(:votes).to_i
  end

end
