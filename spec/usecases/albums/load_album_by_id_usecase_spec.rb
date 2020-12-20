require 'rails_helper'

RSpec.describe Albums::LoadAlbumByIdUsecase do
  before(:all) do
    @album = build(:album)
  end

  it "check return album" do
    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    allow(loadAlbumByIdRepository).to receive(:query)
      .with(an_instance_of(Integer))
      .and_return(@album)

      usecase = Albums::LoadAlbumByIdUsecase.new(loadAlbumByIdRepository)
      response = usecase.execute(10)
      expect(response).to be_truthy
  end

  it "erro if not found album" do
    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    allow(loadAlbumByIdRepository).to receive(:query)
      .with(an_instance_of(Integer))
      .and_raise(ActiveRecord::RecordNotFound)

      usecase = Albums::LoadAlbumByIdUsecase.new(loadAlbumByIdRepository)
      expect{ usecase.execute(10) }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
