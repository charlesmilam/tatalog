class TattoosController < ApplicationController
  before_action :set_tattoo, 
                 only: [
                  :show,
                  :edit,
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
    @tattoo = Tattoo.new(tattoo_params)

    respond_to do |format|
      if @tattoo.save
        format.html {redirect_to @tattoo, notice: "Tattoo sucessfully created."}
      else
        format.html {render action: "new"}
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def tattoo_params
    params.require(:tattoo) .permit(:user_id, :name, :when, :why)
  end

  def set_tattoo
    @tattoo = Tattoo.find(params[:id])
  end
end
