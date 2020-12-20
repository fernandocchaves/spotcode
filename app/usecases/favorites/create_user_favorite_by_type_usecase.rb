module Favorites
  class CreateUserFavoriteByTypeUsecase
      def initialize(createUserFavoriteByTypeRepository)
        @createUserFavoriteByTypeRepository = createUserFavoriteByTypeRepository
      end

    def execute(user, type, favoritable_id)
      @createUserFavoriteByTypeRepository.command(user, type, favoritable_id)
    end
  end
end