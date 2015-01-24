class User < ActiveRecord::Base
  has_many :faves
  has_many :tattoos, through :faves 
end
