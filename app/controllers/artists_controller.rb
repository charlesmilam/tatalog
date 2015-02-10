class ArtistsController < ApplicationController
  before_action :set_artist, only: [
                  :show,
                  :edit,
                  :update,
                  :destroy
                  ]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html {redirect_to artist_path(@artist.id), notice: "Artist created successfully"}
      else
      format.html {render action: "new"}        
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html {redirect_to artist_path(@artist.id), notice: "Artist sucessfully updated."
        }
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy
    @artist.destroy
    respond_to do |format|
      format.html {redirect_to artists_path}
    end
  end

  private
  def set_artist 
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist) .permit(:first_name,
                                    :last_name,
                                    :nick,
                                    :email,
                                    :shop_id,
                                    :url
                                    )
  end
end
