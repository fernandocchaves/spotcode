module Categories
  class LoadAllCategoriesRepository
    def query
      Category.all
    end
  end
end