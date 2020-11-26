require 'rails_helper'

RSpec.describe Artist, type: :model do
  context "validation" do
    it 'is valid with name' do
      artist = build(:artist)
      expect(artist).to be_valid 
    end

    it 'is invalid without name' do
      artist = build(:artist, name: nil)
      artist.valid?
      expect(artist.errors[:name]).to include("can't be blank")
    end
  end
end
