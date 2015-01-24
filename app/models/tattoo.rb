class Tattoo < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites

  belongs_to :artists
  belongs_to :shops
end
