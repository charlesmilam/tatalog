class Tattoo < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :tattoo_pics

  belongs_to :artists
  belongs_to :shops
end
