class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :karma, :gravatar_url
end
