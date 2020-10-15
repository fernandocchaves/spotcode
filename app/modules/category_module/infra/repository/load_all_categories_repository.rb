module CategoryModule
  module Infra
    module Repository
      class LoadAllCategoriesRepository
        def load_all 
          Category.all
        end
      end
    end
  end
end