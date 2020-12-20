module Albums
  class LoadAlbumByIdUsecase
    def initialize(loadAlbumByIdRepository)
      @loadAlbumByIdRepository = loadAlbumByIdRepository
    end

    def execute(id)
      @loadAlbumByIdRepository.query(id)
    end
  end
end