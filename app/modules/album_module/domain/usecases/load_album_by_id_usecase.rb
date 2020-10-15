module AlbumModule
  module Domain
    module Usecases
      class LoadAlbumByIdUsecase
        def initialize(loadAlbumByIdRepository)
          @loadAlbumByIdRepository = loadAlbumByIdRepository
        end

        def find_album_by_id id
          @loadAlbumByIdRepository.find_by_id(id)
        end
      end
    end
  end
end