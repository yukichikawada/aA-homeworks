class AlbumsController < ApplicationController

  def new
    @band = Band.find(params[:band_id])
    @album = Album.new(band_id: params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)
    debugger
    if @album.save
      redirect_to album_url(@album)
    else
      flash[:errors] = @album.errors.full_messages
      redirect_to :new_band_albums
    end
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def album_params
    params.require(:album).permit(:title, :year, :live, :band_id)
  end
end
