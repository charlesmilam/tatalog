class Tattoo < ActiveRecord::Base
  has_many :faves
  has_many :users, through :faves

  belongs_to :artists
  belongs_to :shops
end
