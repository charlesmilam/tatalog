class Artist < ActiveRecord::Base
  has_many :tattoos

  validates :first_name, presence: true
end
