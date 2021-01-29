class DishesController < ApplicationController
  before_action :find_content
  before_action :find_dish, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @dish = @content.dishes.build
  end

  def edit
  end

  def create
    @dish = @content.dishes.build(dish_params)
    
    if @dish.save
      flash[:notice] = "Dish has been created."
      redirect_to content_path(@content)
    else
      flash[:alert] = "Dish has not been created."
      render :new 
    end
  end

  def update
    @dish.update(dish_params)

    redirect_to content_path(@content)
  end

  def destroy
    @dish.destroy

    redirect_to content_path(@content)
  end

  private
  def dish_params
    params.require(:dish).permit( :title, :image )
  end

  def find_content
    @content = Content.find(params[:content_id])
  end

  def find_dish
    @dish = @content.dishes.find(params[:id])
  end

end
