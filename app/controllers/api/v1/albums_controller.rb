class Api::V1::AlbumsController < ApplicationController
  def show
    repository = AlbumModule::Infra::Repository::LoadAlbumByIdRepository.new
    usecase = AlbumModule::Domain::Usecases::LoadAlbumByIdUsecase.new(repository)
    @album = usecase.find_album_by_id(params[:id])
    render json: AlbumModule::Presentation::Builder::Json::AlbumShowBuilder.build(@album, current_user)
  end
end
