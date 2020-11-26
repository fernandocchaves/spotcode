class Api::V1::AlbumsController < ApplicationController
  def show
    repository = Albums::LoadAlbumByIdRepository.new
    usecase = Albums::LoadAlbumByIdUsecase.new(repository)
    @album = usecase.find_album_by_id(params[:id])
    render json: Albums::Json::AlbumShowBuilder.build(@album, current_user)
  end
end
