class Api::V1::CategoriesController < ApplicationController
  def index
    categories = cagetoryService.load_all
    render json: Categories::Json::ShowAllCategoriesBuilder.build(categories)
  end

  def show
    category = cagetoryService.find_category_by_id(params[:id])
    render json: Categories::Json::ShowCategoryBuilder.build(category)
  end

  def cagetoryService
    CategoryService.new
  end
end
