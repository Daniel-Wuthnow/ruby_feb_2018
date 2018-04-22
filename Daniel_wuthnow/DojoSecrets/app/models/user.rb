class User < ActiveRecord::Base
  has_secure_password

  has_many :secrets, dependent: :delete_all
  has_many :likes, dependent: :destroy
  has_many :liked_secrets, through: :likes, source: :secret

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true
  validates :password, confirmation: true
end
