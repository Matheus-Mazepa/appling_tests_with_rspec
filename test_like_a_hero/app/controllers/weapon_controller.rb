class WeaponController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def create
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def show
  end

  def delete
    @weapon = Weapon.find(params[:id])
    @weapon.destroy
    flash[:success] = "The to-do item was successfully destroyed."
    redirect_to weapon_url
  end
end
