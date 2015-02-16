class Tattoo < ActiveRecord::Base
  has_many :favorites
  has_many :tattoo_pics

  has_attached_file :image,
                      styles: {
                      large: "400x400>",
                      medium: "300x300>", 
                      small: "200x200>",
                      thumb: "100x100>"
                    }

  belongs_to :user
  belongs_to :artist
  belongs_to :shop

  validates :user, presence: true
  validates :artist, presence: true
  validates :shop, presence: true

  validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg|jpg)/
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 1.megabytes
end
