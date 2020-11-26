require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validation" do
    it 'is valid with name' do
      category = build(:category)
      expect(category).to be_valid 
    end

    it 'is invalid without name' do
      category = build(:category, name: nil)
      category.valid?
      expect(category.errors[:name]).to include("can't be blank")
    end
  end
end
