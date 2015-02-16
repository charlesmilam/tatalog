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
  before_action :set_artist,
                only: [
                  :new,
                  :edit
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

  def set_artist
    @artists = []
    artists = Artist.all
    artists.each do |artist|
      @artists << [artist.name, artist.id]
    end
  end
end
