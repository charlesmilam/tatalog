class User < ActiveRecord::Base
  has_many :favorites
  has_many :tattoos#, through: :favorites 

  validates :user_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
