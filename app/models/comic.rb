class Comic < ActiveRecord::Base
  attr_accessible :title, :prompt_one_id, :prompt_two_id, :user, :image

  belongs_to :prompt_one, class_name: "Prompt", foreign_key: "prompt_one_id"
  belongs_to :prompt_two, class_name: "Prompt", foreign_key: "prompt_two_id"
  belongs_to :user
  mount_uploader :image, ComicUploader
end
