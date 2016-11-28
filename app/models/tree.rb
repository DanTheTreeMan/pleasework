# Poster: Grabs the image via uri and displays it, fix the alt text
class Tree < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  mount_uploader :image, ImageUploader
  default_scope { where(active: true) }
  def poster
    "<%= (#{image_url}, :alt => #{image_url} %>"
  end

  # Fields before the 'like' will be returned if there is a match
  # To switch to PostgreSQL 'Like' may have to change to 'ILIKE'
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
