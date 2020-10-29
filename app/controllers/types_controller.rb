class TypesController < ApplicationController
  
  def index
    @types = params[:id]
    @weapons = Weapon.where(weapon_type: params[:id])
  end
end
