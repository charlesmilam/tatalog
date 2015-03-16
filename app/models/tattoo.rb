class Tattoo < ActiveRecord::Base
  has_many :favorites

  has_attached_file :image,
                      styles: {
                      large: "400x400>",
                      medium: "300x300>", 
                      small: "200x200>",
                      thumb: "100x100>",
                    },
                    s3_protocol: "https",
                    default_url: "https://s3.amazonaws.com/tatalog-milam-dev/misc/images/noavatar.png"

  belongs_to :user
  belongs_to :artist
  belongs_to :shop

  validates :user, presence: true
  validates :artist, presence: true
  validates :shop, presence: true

  validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg|jpg)/
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 2.megabytes
end
