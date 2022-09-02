class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to shops_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name)
  end
end
