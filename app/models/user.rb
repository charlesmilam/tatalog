class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessor :remember_token

  before_save {self.email = email.downcase}

  has_many :favorites
  has_many :tattoos

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255}, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}
  validates :password, confirmation: true, allow_blank: true, length: {minimum: 6}
  validates :password_confirmation, allow_blank: true, length: {minimum: 6}

  has_secure_password

  # returns the hash digest for a given string
  def User.digest(string)  
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine::cost
    BCrypt::Password.create(string, cost: cost)
  end

  # returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # remembers a user, storing token in db, for use in persistent sessions
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # forgets a user, allowing them to log out
  def forget
    update_attribute(:remember_digest, nil)
  end

  # returns true if passed in token matches the digest
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

end
