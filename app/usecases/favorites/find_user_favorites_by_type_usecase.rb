module Favorites
  class FindUserFavoritesByTypeUsecase
    def initialize(findUserFavoritesByTypeRepository)
      @findUserFavoritesByTypeRepository = findUserFavoritesByTypeRepository
    end

    def execute(user, type)
      @findUserFavoritesByTypeRepository.query(user, type)
    end
  end
end