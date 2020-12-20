class Api::V1::AlbumsController < ApplicationController
  def show
    album = albumService.find_album_by_id(params[:id])
    render json: Albums::Json::AlbumShowBuilder.build(album, current_user)
  end

  def albumService
    AlbumService.new
  end
end
