module Categories
  class LoadCategoryByIdUsecase

    def initialize(loadCategoryByIdRepository)
      @loadCategoryByIdRepository = loadCategoryByIdRepository
    end

    def execute(id)
      @loadCategoryByIdRepository.query(id)
    end
  end
end