class Api::V1::FavoritesController < ApplicationController
  def index
    @favorite_albums = favoriteService.find_user_favorites_by_type(current_user, "Album")
    @favorite_songs = favoriteService.find_user_favorites_by_type(current_user, "Song")
    @favorite_artists = favoriteService.find_user_favorites_by_type(current_user, "Artist")
  end

  def create
    favoriteService.create_user_favorit_by_type(current_user, params[:favoritable_type], params[:id])
    head :ok
  end

  def destroy
    @favoritable = current_user.favorites.find_by(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.destroy
    head :ok
  end

  def favoriteService
    FavoriteService.new
  end
end
