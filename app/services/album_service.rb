class AlbumService
  def find_album_by_id(id)
    return loadAlbumByIdUsecase.execute(id)
  end

  def loadAlbumByIdRepository
    Albums::LoadAlbumByIdRepository.new
  end

  def loadAlbumByIdUsecase
    Albums::LoadAlbumByIdUsecase.new(loadAlbumByIdRepository)
  end
end