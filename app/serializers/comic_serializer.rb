class ComicSerializer < ActiveModel::Serializer
  attributes :id, :title, :prompt_one, :prompt_two
end