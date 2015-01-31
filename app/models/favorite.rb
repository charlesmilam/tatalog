class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :tattoo

  validates :user, presence: true
  validates :tattoo, presence: true
end
