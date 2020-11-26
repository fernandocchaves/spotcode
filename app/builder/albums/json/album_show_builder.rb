module Albums
  module Json
    class AlbumShowBuilder
      def self.build(data, current_user)
        response = OpenStruct.new
        response.title = data.title
        response.cover_url = Rails.application.routes.url_helpers.url_for(data.cover)
        response.artist_name = data.artist.name
        response.songs = []

        data.songs.each do |song|
          response.songs.push({
            id: song.id,
            title: song.title,
            artist_name: data.artist.name,
            file_url: Rails.application.routes.url_helpers.url_for(song.file),
            album_id: song.album.id,
            favorite: current_user.is_favorite?('Song', song.id)
          })
        end
        return response.marshal_dump
      end
    end
  end
end