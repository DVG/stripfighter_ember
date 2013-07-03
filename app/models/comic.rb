class Comic < ActiveRecord::Base
  has_and_belongs_to_many :prompts
end
