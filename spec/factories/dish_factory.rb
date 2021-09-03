# frozen_string_literal: true
require 'rack/test'

FactoryBot.define do
  factory :dish do
    title { Faker::Food.dish }
    image { Rack::Test::UploadedFile.new('public/system/dishes/images/000/000/001/original/missing.png', 'image/png') }
    ingredients { Faker::Food.ingredient }
    cooking_method { Faker::Food.measurement }
  end
end
