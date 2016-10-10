class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end
end
