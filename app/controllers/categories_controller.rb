class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render json: @categories
  end

  def show
    @category = Category.find_by(id: params[:id])

    if @category
      render json: @category
    else
      render json: {error: "Category not found"}, status: 404
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category
    else
      render json: {error: "Failed to create Category" }
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :color, :user_id)
  end

end
