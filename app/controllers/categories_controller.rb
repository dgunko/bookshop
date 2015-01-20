class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.find(2) #for carusel
  end

  def show
    @category = Category.find(params[:id])
  end
end
