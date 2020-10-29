class CategoriesController < ApplicationController
  
  def index
    @category = params[:id]
    @weapons = Weapon.where(category: params[:id])
    @dresses = Dress.where(category: params[:id])
  end
  
  
  # def show
  #   @weapons = Weapon.where(category: params[:id])
  #   @dresses = Dress.where(category: params[:id])
  # end
end


