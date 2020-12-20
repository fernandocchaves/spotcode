module Favorites
  class FindUserFavoritesByTypeRepository
    def query(user, type)
      user.favorites.where(favoritable_type: type).map(&:favoritable)
    end
  end
end