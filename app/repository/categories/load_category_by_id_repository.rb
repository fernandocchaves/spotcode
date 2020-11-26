module Categories
  class LoadCategoryByIdRepository
    def find_by_id(id)
      Category.find(id)
    end
  end
end