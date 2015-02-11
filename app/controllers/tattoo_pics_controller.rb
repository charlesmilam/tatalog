class TattooPicsController < ApplicationController
  before_action :set_pic, 
                 only: [
                  :show,
                  :edit,
                  :update,
                  :destroy
                ]
  before_action :set_tattoo,
                only: [
                  :index,
                  :show,
                  :new,
                  :create,
                  :edit,
                  :update,
                  :destroy
                ]
  def index
    @pics = @tattoo.tattoo_pics.all
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
  def pics_params
    params.require(:tattoo_pic) .permit(:tattoo_id, :description, :url)
  end

  def set_pic
    @pic = Tattoo_Pic.find(params[:id])
  end

  def set_tattoo
    @tattoo = Tattoo.find(params[:tattoo_id])
  end
end
