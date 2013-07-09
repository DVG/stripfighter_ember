require "digest/md5"

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates :email, presence: true

  before_save :update_gravatar

  private

  def update_gravatar
    hash = Digest::MD5.digest(email)
    gravatar_url = "http://www.gravatar.com/avatar/#{hash}"
  end
end