class TattoosController < ApplicationController
  before_action :set_tattoo, 
                 only: [
                  :show,
                  :edit,
                  :update,
                  :destroy
                ]
  before_action :set_user,
                only: [
                  :index,
                  :show,
                  :new,
                  :create,
                  :edit,
                  :update,
                  :destroy
                ]
  before_action :set_artists,
                only: [
                  :new,
                  :edit,
                  :index,
                  :show
                ]
  before_action :set_artists_info,
                only: [
                  :index,
                  :show
                ]
  before_action :set_shops,
                only: [
                  :new,
                  :edit,
                  :index,
                  :show
                ]
  before_action :set_shops_info,
                only: [
                  :index,
                  :show
                ]
  before_action :set_favorite,
                only: [
                  :index,
                  :show
                ]
  before_action :signed_in_user
  before_action :correct_user,
                  except: [
                    :index,
                    :show
                  ]

  def index
    @tattoos = @user.tattoos.all
  end

  def show
  end

  def new
    @tattoo = @user.tattoos.new
  end

  def create
    tattoo = @user.tattoos.new(tattoo_params)

    if tattoo.save
      redirect_to user_tattoos_path, notice: "Tattoo sucessfully created."
    else
      render action: "new"
    end      
  end

  def edit
  end

  def update
    respond_to do |format|
      if @tattoo.update(tattoo_params)
        format.html {redirect_to user_tattoo_path(id: @tattoo[:id]), notice: "Tattoo sucessfully updated."}
      else
        format.html {render action: "new"}
      end
    end
  end

  def destroy
    @tattoo.destroy

    respond_to do |format|
      format.html {redirect_to user_tattoos_path}
    end
  end

  private
  def tattoo_params
    params.require(:tattoo) .permit(:user_id, :artist_id, :shop_id, :name, :when, :why, :image)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_tattoo
    @tattoo = Tattoo.find(params[:id])
  end

  def set_artists
    @artists = []
    artists = Artist.all
    artists.each do |artist|
      @artists << [artist.name, artist.id]
    end
  end

  def set_artists_info
    @artists_info = []
    artists = Artist.all
    artists.each do |artist|
      @artists_info << {id: artist.id, name: artist.name}
    end
  end

  def set_shops
    @shops = []
    shops = Shop.all
    shops.each do |shop|
      @shops << [shop.name, shop.id]
    end
  end

  def set_shops_info
    @shops_info = []
    shops = Shop.all
    shops.each do |shop|
      @shops_info << {id: shop.id, name: shop.name}
    end
  end

  def set_favorite
    @favorite = Favorite.new
  end

  # confirms a user is signed in
  def signed_in_user
    unless signed_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_url
    end
  end

  # confirms the correct user
  def correct_user
    flash[:danger] = "You are not authorized to view that page."
    redirect_to(root_url) unless current_user?(@user)
  end
end
