class Api::V1::CategoriesController < ApplicationController
  def index_s
    @categories = Category.all
  end

  def index
    repository = CategoryModule::Infra::Repository::LoadAllCategoriesRepository.new
    usecase = CategoryModule::Domain::Usecases::LoadAllCategoriesUsecase.new(repository)
    @categories = usecase.load_all
    render json: CategoryModule::Presentation::Builder::Json::ShowAllCategoriesBuilder.build(@categories)
  end

  def show
    repository = CategoryModule::Infra::Repository::LoadCategoryByIdRepository.new
    usecase = CategoryModule::Domain::Usecases::LoadCategoryByIdUsecase.new(repository)
    @category = usecase.find_category_by_id(params[:id])
    render json: CategoryModule::Presentation::Builder::Json::ShowCategoryBuilder.build(@category)
  end
end
