class Tattoo < ActiveRecord::Base
  has_many :favorites
  has_many :tattoo_pics

  belongs_to :user
  belongs_to :artist
  belongs_to :shop

  validates :user, presence: true
  validates :artist, presence: true
  validates :shop, presence: true
end
