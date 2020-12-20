class FavoriteService
  def find_user_favorites_by_type(user, type)
    findUserFavoritesByTypeRepository = Favorites::FindUserFavoritesByTypeRepository.new
    findUserFavoritesByTypeUsecase = Favorites::FindUserFavoritesByTypeUsecase.new(findUserFavoritesByTypeRepository)
    findUserFavoritesByTypeUsecase.execute(user, type)
  end

  def create_user_favorit_by_type(user, type, favoritable_id)
    createUserFavoriteByTypeRepository = Favorites::CreateUserFavoriteByTypeRepository.new
    createUserFavoriteByTypeUsecase = Favorites::CreateUserFavoriteByTypeUsecase.new(createUserFavoriteByTypeRepository)
    createUserFavoriteByTypeUsecase.execute(user, type, favoritable_id)
  end

end