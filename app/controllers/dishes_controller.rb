# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :find_content
  before_action :find_dish, only: %i[show edit update destroy]

  def index
    redirect_to content_path(@content)
  end

  def show; end

  def new
    @dish = @content.dishes.build
  end

  def edit; end

  def create
    @dish = @content.dishes.build(dish_params)
    if @dish.save
      redirect_to content_path(@content)
    else
      render :new
    end
  end

  def update
    if @dish.update(dish_params)

      redirect_to content_path(@content)
    else
      render :edit
    end
  end

  def destroy
    @dish.destroy

    redirect_to content_path(@content)
  end

  private

  def dish_params
    params.require(:dish).permit(:title, :image, :ingredients, :cooking_method)
  end

  def find_content
    @content = Content.find(params[:content_id])
  end

  def find_dish
    @dish = @content.dishes.find(params[:id])
  end
end
