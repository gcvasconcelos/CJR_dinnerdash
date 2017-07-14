class CategoriesController < ApplicationController
  # before_action :admin? %i[new, create, edit, update, destroy]

  def index
    @categories = Category.all
  end
 
  def show
    @category = Category.find(params[:id])
  end
 
  def new
    @category = Category.new
  end
 
  def edit
    @category = Category.find(params[:id])
  end
 
  def create
    @category = Category.new(category_params)
 
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end
 
  def update
    @category = Category.find(params[:id])
 
    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
 
    redirect_to category_path
  end

  def admin?
    block_access if !logged_in?
  end
 
  private
    def category_params
      params.require(:category).permit(:name, :item)
    end
end
