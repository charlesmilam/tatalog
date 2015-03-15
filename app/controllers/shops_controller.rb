class ShopsController < ApplicationController
  before_action :set_shop,
                  only: [
                    :show,
                    :edit,
                    :update,
                    :destroy
                  ]
  before_action :signed_in_user

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    session[:return_to] ||= request.referer
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html {redirect_to session.delete(:return_to), notice: "Shop created successfuly."}
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
        format.html {redirect_to shop_path(@shop.id), notice: "Shop successfuly updated."}
      else
        format.html {render action: "edit"}        
      end
    end
  end

  def destroy
    @shop.destroy
    respond_to do |format|
      format.html {redirect_to shops_path}
    end
  end

  private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop) .permit(:name, :address, :city, :state, :zip, :url)
  end

   # confirms a user is signed in
  def signed_in_user
    unless signed_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_url
    end
  end
end
