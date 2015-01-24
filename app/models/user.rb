class User < ActiveRecord::Base
  has_many :favorites
  has_many :tattoos, through: :favorites 
end
