class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index edit]

  def index
    @shops = Shop.all
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
    params.require(:shop).permit(:name, schedules_attributes: %i[
                                   id
                                   morning_opens_at
                                   morning_closes_at
                                   afternoon_opens_at
                                   afternoon_closes_at
                                   weekday
                                   _destroy
                                 ])
  end
end
