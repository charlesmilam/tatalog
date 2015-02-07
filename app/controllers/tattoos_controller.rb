class TattoosController < ApplicationController
  def index
    @tattoos = Tattoo.all
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
  def tattoo_params
    params.require(:tattoo) .permit(:user_id)
  end
end
