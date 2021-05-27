# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :content 

  validates :title, presence: true
  validates :ingredients, presence: true
  validates :cooking_method, presence: true
  
  has_attached_file :image, styles: { original: '250x250#' }, default_url: "/images/:style/ovsyanka.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/, size: { less_than: 1.megabyte }
  validates_attachment :image, presence: true
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
  do_not_validate_attachment_file_type :image
end
