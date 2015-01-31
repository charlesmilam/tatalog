class TattooPic < ActiveRecord::Base
  belongs_to :tattoo

  validates :tattoo, presence: true
  validates :url, presence: true
end
