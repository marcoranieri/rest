class Item < ApplicationRecord
  include Rails.application.routes.url_helpers
  
  has_one_attached :image

  validate :image_type
  validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    size: { in: 0..500.kilobytes }

  private

  def get_image_url
    url_for(self.image)
  end
  
  def image_type
    errors.add(:image, "must be present") if !image.attached?
  end

end





