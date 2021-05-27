# frozen_string_literal: true

class ContentsController < ApplicationController
  before_action :current_content, only: %i[show edit update destroy]

  def index
    @contents = if params[:sort_by] == "title"
        Content.order(:title)
      else
        Content.all
      end
  end

  def show; end

  def new
    @content = Content.new
  end

  def create
    @content = Content.create(content_params)
    if @content.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit; end

  def update
    @content.update(content_params)

    redirect_to :root
  end

  def destroy
    @content.destroy

    redirect_to contents_path
  end

  private

  def content_params
    params.require(:content).permit(:title)
  end

  def current_content
    @content = Content.find(params[:id])
  end
end
