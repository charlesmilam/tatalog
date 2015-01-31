class Tattoo < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :tattoo_pics

  belongs_to :artist
  belongs_to :shop
end
