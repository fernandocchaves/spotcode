require 'rails_helper'

RSpec.describe Albums::LoadAlbumByIdRepository do
  before(:all) do
    @album = build(:album)
  end

  it "check if model is called" do
    allow(Album).to receive(:find)
    expect(Album).to receive(:find).with(an_instance_of(Integer))

    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    loadAlbumByIdRepository.query(10)
  end

  it "check return album" do
    allow(Album).to receive(:find)
      .with(an_instance_of(Integer))
      .and_return(@album)

    loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
    response = loadAlbumByIdRepository.query(10)
    expect(response).to be_truthy
  end

  it "erro if not found album" do
    allow(Album).to receive(:find)
      .with(an_instance_of(Integer))
      .and_raise(ActiveRecord::RecordNotFound)

      loadAlbumByIdRepository = Albums::LoadAlbumByIdRepository.new
      expect{ loadAlbumByIdRepository.query(10) }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
