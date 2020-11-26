module Categories
  module Json
    class ShowCategoryBuilder
      def self.build(data)
        response = OpenStruct.new
        response.name = data.name
        response.image_url = Rails.application.routes.url_helpers.url_for(data.image)
        response.songs = []
        response.artists = []
        response.albums = []

        data.songs.each do |song|
          response.songs.push({
            id: song.id,
            title: song.title,
            artist_name: song.album.artist.name,
            file_url: Rails.application.routes.url_helpers.url_for(song.file)
          })
        end

        data.artists.each do |artist|
          response.artists.push({
            id: artist.id,
            name: artist.name,
            photo_url: Rails.application.routes.url_helpers.url_for(artist.photo)
          })
        end

        data.albums.each do |album|
          response.albums.push({
            id: album.id,
            title: album.title,
            artist_name: album.artist.name,
            cover_url: Rails.application.routes.url_helpers.url_for(album.cover)
          })
        end

        return response.marshal_dump
      end
    end
  end
end