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
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html {redirect_to shops_show_path, notice: "Shop created successfuly."}
      else
        format.html {render action: "new"}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html {redirect_to shops_show_path, notice: "Shop successfuly updated."}
      else
        format.html {render action: "edit"}        
      end
    end
  end

  def destroy
    @shop.destroy
    respond_to do |format|
      format.html {redirect_to shops_index_path}
    end
  end

  private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop) .permit(:name, :address, :city, :state, :zip, :url)
  end
end
