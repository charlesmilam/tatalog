class FavoritesController < ApplicationController
  before_action :set_favorite, 
                 only: [
                  :show,
                  :destroy
                ]

  before_action :set_user,
                  only: [
                    :destroy
                  ]

  before_action :signed_in_user

  def index
    @favorites = Favorite.all
  end

  def show
  end

  def create
    #favorite = Favorite.new(favorite_params)

    if Favorite.create(favorite_params)
      flash.now[:success] = "Favorite sucessfully added."
    else
      flash.now[:danger] = "Unable to add as favorite."
    end
  end

  def destroy
    if @favorite.destroy
      redirect_to user_tattoos_path(@user.id)
    end
  end

  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def favorite_params
    params.require(:favorite) .permit(:user_id, :tattoo_id)
  end

   # confirms a user is signed in
  def signed_in_user
    unless signed_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_url
    end
  end
end
