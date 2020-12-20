require 'rails_helper'

RSpec.describe Api::V1::FavoritesController, type: :controller do
  context "#index" do
    include_context "logged_user"
    
    it 'should responds success' do
      get :index, xhr: true
      expect(response).to have_http_status(200)
    end
  end
end
