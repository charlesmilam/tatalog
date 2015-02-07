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
                  :show,
                  :edit,
                  :create,
                  :update,
                  :destroy
                ]

  def index
    @tattoos = Tattoo.all
  end

  def show
  end

  def new
    @tattoo = Tattoo.new
  end

  def create
    respond_to do |format|
      if @tattoo = @user.tattoos.create(tattoo_params)
        format.html {redirect_to user_tattoo_path(id: @tattoo[:id]), notice: "Tattoo sucessfully created."}
      else
        format.html {render action: "new"}
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @tattoo.destroy

    respond_to do |format|
      format.html {redirect_to user_tattoos_path}
    end
  end

  private
  def tattoo_params
    params.require(:tattoo) .permit(:user_id, :artist_id, :shop_id, :name, :when, :why)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_tattoo
    @tattoo = Tattoo.find(params[:id])
  end
end
