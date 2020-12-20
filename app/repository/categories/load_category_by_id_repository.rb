module Categories
  class LoadCategoryByIdRepository
    def query(id)
      Category.find(id)
    end
  end
end