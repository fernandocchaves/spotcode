require 'rails_helper'

RSpec.describe Api::V1::AlbumsController, type: :controller do
  before(:all) do
    @artist = create(:artist)
    @category = create(:category)
  end

  it 'should responds success' do
    tmp_dir = Rails.root.join("tmp")
    album = create(:album, artist: @artist, category: @category)
    album.cover.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png")

    user = create(:user)
    sign_in user
    
    get :show, params: { id: album.id.to_s }
    expect(response).to have_http_status(200)
  end
end
