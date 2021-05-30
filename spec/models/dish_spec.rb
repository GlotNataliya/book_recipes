# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dish, type: :model do
  before(:all) do
    dish_params = { title: 'Borodino bread',
                    image: 'new-dish.png',
                    ingredients: 'water, yeast, flour',
                    cooking_method: 'mix everything' }
    @content = Content.create(title: 'Bread')
    @dish = @content.dishes.build(dish_params)

    it 'checks that a dish can be created' do
      expect(@dish).to be_valid
    end

    it 'checks that a dish can be read' do
      expect(@content.dishes.find_by(dish_params)).to eq(@dish)
    end

    it 'checks that a content can be updated' do
      @dish.update(title: 'Borodino bread')
      expect(@content.dishes.find_by(dish_params)).to eq(@dish)
    end

    it 'checks that a dish can be destroyed' do
      @dish.destroy
      expect(@content.dishes.find_by(dish_params)).to be_nil
    end
  end
end
