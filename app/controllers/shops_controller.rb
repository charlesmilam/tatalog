class ShopsController < ApplicationController
  before_action :set_shop,
                  only: [
                    :show,
                    :edit,
                    :update,
                    :destroy
                  ]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop) .permit(:name, :address, :city, :state, :zip, :url)
  end
end
