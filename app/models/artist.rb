class Artist < ActiveRecord::Base
  has_many :tattoos

  validates :name, presence: true
end
