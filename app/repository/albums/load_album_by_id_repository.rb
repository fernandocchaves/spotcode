module Albums
  class LoadAlbumByIdRepository
    def query(id) 
      Album.find(id)
    end
  end
end