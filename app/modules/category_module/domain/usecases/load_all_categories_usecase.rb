module CategoryModule
  module Domain
    module Usecases
      class LoadAllCategoriesUsecase
        def initialize(loadAllCategoriesRepository)
          @loadAllCategoriesRepository = loadAllCategoriesRepository
        end

        def load_all
          @loadAllCategoriesRepository.load_all
        end
      end
    end
  end
end