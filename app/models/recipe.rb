class Recipe < ApplicationRecord
  belongs_to :dish, inverse_of: :recipe
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/ovsyanka.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
