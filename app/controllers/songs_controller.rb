class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    byebug
    @artist = Artist.find(params[:artist_id])
    @genre = Genre.find(params[:genre_id])

  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id, :genre_id)
  end

end
