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
    @pic = @tattoo.tattoo_pics.new
  end

  def create
    pic = @tattoo.tattoo_pics.new(pic_params)

    if pic.save
      redirect_to tattoo_tattoo_pics_path, notice: "Tattoo pic sucessfully created."
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pic_params
    params.require(:tattoo_pic) .permit(:tattoo_id, :description, :url)
  end

  def set_pic
    @pic = TattooPic.find(params[:id])
  end

  def set_tattoo
    @tattoo = Tattoo.find(params[:tattoo_id])
  end
end
