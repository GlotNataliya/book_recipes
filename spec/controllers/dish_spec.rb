# frozen_string_literal: true

require "rails_helper"

RSpec.describe DishesController, type: :controller do
  let!(:content) { FactoryBot.create :content }
  let!(:dish) { FactoryBot.create(:dish, content: content) }
  #let(:param) { { content: { title: "test title" }, dish: { title: "test dish", image: "test image", ingredients: "test ingredients", cooking_method: "test cooking_method" } } }
  let!(:dish_param) { { dish: { title: "test dish", image: "test image", ingredients: "test ingredients", cooking_method: "test cooking_method" } } }
  
  # show action
  describe "GET #show" do
    before do
      get :show, params: { content_id: content.id, id: dish.to_param }
    end

    it "assigns the dish" do
      expect(assigns(:dish)).not_to be_nil
    end
  end

  # create action
  describe "POST #create" do
    it "create a new dish" do
      expect do
        post :create, params: { id: dish }
      end.to change(Dish, :count).by(1)

      expect(response).to have_http_status(:created)
    end
  end
end
