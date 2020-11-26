class Api::V1::CategoriesController < ApplicationController
  def index
    repository = Categories::LoadAllCategoriesRepository.new
    usecase = Categories::LoadAllCategoriesUsecase.new(repository)
    @categories = usecase.load_all
    render json: Categories::Json::ShowAllCategoriesBuilder.build(@categories)
  end

  def show
    repository = Categories::LoadCategoryByIdRepository.new
    usecase = Categories::LoadCategoryByIdUsecase.new(repository)
    @category = usecase.find_category_by_id(params[:id])
    render json: Categories::Json::ShowCategoryBuilder.build(@category)
  end
end
