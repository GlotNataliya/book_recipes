class RecipesController < ApplicationController
  before_action :find_params_content
  before_action :find_params_dish
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
 
  def show
  end
    
  def new
    @recipe = @dish.build_recipe
  end

  def edit
  end
    
  def create
    @recipe = @dish.build_recipe(recipe_params)

    if @recipe.save
      flash[:notice] = "Dish has been created."
      redirect_to content_dish_path(@content, @dish)
    else
      flash[:alert] = "Dish has not been created."
      render :new 
    end

  end
    
  def update
    @recipe.update(recipe_params)

    redirect_to content_dish_path(@content, @dish)
  end

  def destroy
    @recipe.destroy
  
    redirect_to content_dish_path(@content, @dish)
  end


    private
  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :cooking_method, :dish_id)
  end

  def find_params_content
    @content = Content.find(params[:content_id])
  end

  def find_params_dish
    @dish = @content.dishes.find(params[:dish_id])
  end

  def find_recipe
    @recipe = @dish.recipe
  end
end
