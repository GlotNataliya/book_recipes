# frozen_string_literal: true

class Content < ApplicationRecord
  has_many :dishes, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end
