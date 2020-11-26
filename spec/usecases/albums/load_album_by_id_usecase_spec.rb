require 'rails_helper'

RSpec.describe Albums::LoadAlbumByIdUsecase do
  before(:all) do
    @album = build(:album)
  end

  it "check return album" do
    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    allow(loadAlbumByIdRepository).to receive(:find_by_id)
      .with(an_instance_of(Integer))
      .and_return(@album)

      usecase = Albums::LoadAlbumByIdUsecase.new(loadAlbumByIdRepository)
      response = usecase.find_album_by_id(10)
      expect(response).to be_truthy
  end

  it "erro if not found album" do
    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    allow(loadAlbumByIdRepository).to receive(:find_by_id)
      .with(an_instance_of(Integer))
      .and_raise(ActiveRecord::RecordNotFound)

      usecase = Albums::LoadAlbumByIdUsecase.new(loadAlbumByIdRepository)
      expect{ usecase.find_album_by_id(10) }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
