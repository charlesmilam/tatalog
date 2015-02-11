class FavoritesController < ApplicationController
  before_action :set_favorite, 
                 only: [
                  :show,
                  :destroy
                ]
  def index
    @favorites = Favorite.all
  end

  def show
  end

  def create
  end

  def destroy
  end

  private
  def set_favorite
    @favorite =Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite) .permit(:user_id, :tattoo_id)
  end
end
