module Categories
  class LoadAllCategoriesUsecase
    def initialize(loadAllCategoriesRepository)
      @loadAllCategoriesRepository = loadAllCategoriesRepository
    end

    def execute
      @loadAllCategoriesRepository.query
    end
  end
end