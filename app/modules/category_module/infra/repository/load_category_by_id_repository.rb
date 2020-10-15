module CategoryModule
  module Infra
    module Repository
      class LoadCategoryByIdRepository
        def find_by_id id 
          Category.find(id)
        end
      end
    end
  end
end