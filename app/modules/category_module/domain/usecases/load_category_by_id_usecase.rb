module CategoryModule
  module Domain
    module Usecases
      class LoadCategoryByIdUsecase
        def initialize(loadCategoryByIdRepository)
          @loadCategoryByIdRepository = loadCategoryByIdRepository
        end

        def find_category_by_id id
          @loadCategoryByIdRepository.find_by_id(id)
        end
      end
    end
  end
end