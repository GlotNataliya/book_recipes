# frozen_string_literal: true

FactoryBot.define do
  factory :content do
    title { Faker::Food.dish }
  end
end
