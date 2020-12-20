class CategoryService
  def load_all
    loadAllCategoriesRepository = Categories::LoadAllCategoriesRepository.new
    loadAllCategoriesUsecase = Categories::LoadAllCategoriesUsecase.new(loadAllCategoriesRepository)
    loadAllCategoriesUsecase.execute()
  end

  def find_category_by_id(id)
    loadCategoryByIdRepository = Categories::LoadCategoryByIdRepository.new
    loadCategoryByIdUsecase = Categories::LoadCategoryByIdUsecase.new(loadCategoryByIdRepository)
    loadCategoryByIdUsecase.execute(id)
  end
end