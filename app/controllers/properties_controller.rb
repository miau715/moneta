class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end
  def new
    @property = Property.new
  end
  def create
    @property = Property.create(params[:property])
    @property.save
    redirect_to properties_path
  end
  def edit
    @property = Property.find(params[:id])
  end
  def update
    @property = Property.find(params[:id])
    @property.update_attributes(params[:property])
    redirect_to properties_path
  end
  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    
    redirect_to properties_path
  end
end
