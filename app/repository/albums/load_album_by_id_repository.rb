module Albums
  class LoadAlbumByIdRepository
    def find_by_id id 
      Album.find(id)
    end
  end
end