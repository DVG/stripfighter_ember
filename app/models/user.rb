class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  include Gravtastic
  gravtastic size: 40, secure: false

  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  before_save :ensure_authentication_token

  validates :username, presence: true

  has_many :comics

  has_reputation :karma,
    :source => [
    :reputation => :votes, :of => :comics, :weight => 10]

  def karma
    self.reputation_for(:karma).to_i
  end
end
