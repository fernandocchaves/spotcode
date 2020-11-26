require 'rails_helper'

RSpec.describe Album, type: :model do
  before(:all) do
    @artist = build(:artist)
    @category = build(:category)
  end

  context "validation" do
    it 'is valid with title and date' do
      album = build(:album, artist: @artist, category: @category)
      expect(album).to be_valid 
    end

    it 'is invalid without name' do
      album = build(:album, title: nil)
      album.valid?
      expect(album.errors[:title]).to include("can't be blank")
    end
  end
end
