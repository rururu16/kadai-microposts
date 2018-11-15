class FavoritesController < ApplicationController
  def create
    post = Micropost.find(params[:id])
    current_user.favo(post)
    flash[:success] = 'いいねしました'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    post = Micropost.find(params[:id])
    current_user.unfavo(post)
    flash[:success] = 'いいねを解除しました'
    redirect_back(fallback_location: root_path)
  end
end
