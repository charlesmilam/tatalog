class Fave < ActiveRecord::Base
  belongs_to :user
  belongs_to :tattoo
end
