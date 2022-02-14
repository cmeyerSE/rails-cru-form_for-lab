class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params_artist(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def params_artist(*args)
    params.require(:artist).permit(*args)
  end
  
end
