class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
@artist=get_artist
  end

def edit
  @artist = get_artist
end

  def update
    @artist = get_artist
    if @artist.update(artist_params)
      redirect_to artist_path(@artist), notice: "Artist"
    else
      render "edit"
    end
  end

def destory
  @artist = get_artist
  @artist.destroy
  redirect_to artists_path
end
end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render "new"
  end
end

private

  def artist_params
    params.require(:artist).permit(:name, :image_url, :description)
  end
end
