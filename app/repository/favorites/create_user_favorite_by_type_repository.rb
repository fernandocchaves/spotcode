module Favorites
  class CreateUserFavoriteByTypeRepository
    def command(user, type, favoritable_id)
      favoritable = user.favorites.new(favoritable_type: type, favoritable_id: favoritable_id)
      favoritable.save
    end
  end
end