# frozen_string_literal: true

FactoryBot.define do
  factory :dish do
    title { Faker::Food.dish }
    image { 'recipe-page.png' }
    ingredients { Faker::Food.ingredient }
    cooking_method { Faker::Food.measurement }
  end
end
