class WeaponsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_weapon, only: [:show, :edit, :update, :destroy]

  # GET /weapons
  # GET /weapons.json
  def index
    @weapons = Weapon.all
  end

  # GET /weapons/1
  # GET /weapons/1.json
  def show
  end

  # GET /weapons/new
  def new
    @weapon = Weapon.new
    @category = Category.new
    @type = Type.new
  end

  # GET /weapons/1/edit
  def edit
  end

  # POST /weapons
  # POST /weapons.json
  def create
    @weapon = Weapon.new(weapon_params)
    if @weapon.save
      @status = true
    else
      @status = false
    end
  end

  # PATCH/PUT /weapons/1
  # PATCH/PUT /weapons/1.json
  def update(weapon_params)
    if @weapon.update
      @status = true
    else
      @status = false
    end
  end

  # DELETE /weapons/1
  # DELETE /weapons/1.json
  def destroy
    @weapon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weapon_params
      params.require(:weapon).permit(:no, :name, :name, :img, :weapon_type, :category, :rarity, :max_lvl, :element, :max_atck, :max_bullet, :skl_1, :skl_1_element, :skl_1_detail, :skl_2, :skl_2_element, :skl_2_detail, :kakusei, { category_ids: [] })
    end
end
