require 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
  context "#show" do
    include_context "logged_user"
    
    it 'should responds success' do
      tmp_dir = Rails.root.join("tmp")
      category = create(:category)
      category.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png")

      get :show, params: { id: category.id.to_s }
      expect(response).to have_http_status(200)
    end
  end
end
