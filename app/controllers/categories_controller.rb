class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @outcome_categories = Category.outcome
    @income_categories = Category.income
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new

  end

  def create
    @category = Category.create(params[:category])

    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])

    redirect_to tracks_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to tracks_path
  end

end
