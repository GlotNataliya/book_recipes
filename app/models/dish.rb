class Dish < ApplicationRecord
  belongs_to :content #, optional: true
  has_one :recipe, inverse_of: :dish, autosave: true, dependent: :destroy #, required: false , primary_key: :dish_id
  accepts_nested_attributes_for :recipe, allow_destroy: true #,  reject_if: :all_blank  #update_only: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", original: "250x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ 
  validates_attachment :image, presence: true, content_type: { content_type: "image/jpeg" }, size: { in: 0..200.kilobytes }
end
