class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save {self.email = email.downcase}

  has_many :favorites
  has_many :tattoos

  validates :user_name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255}, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {maximum: 50}

  has_secure_password
end
