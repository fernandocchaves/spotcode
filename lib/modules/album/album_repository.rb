module Modules
  module Album
    class AlbumRepository
      def initialize
        @model = Album
      end

      def find_by_id id 
        @model.find(id)
      end
    end
  end
end