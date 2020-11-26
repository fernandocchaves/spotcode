module Categories
  class LoadAllCategoriesRepository
    def load_all
      Category.all
    end
  end
end