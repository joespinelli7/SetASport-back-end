class FavoriteCourtsController < ApplicationController
  def index
    render json: FavoriteCourt.all
  end

  def show
    render json: FavoriteCourt.find(params[:id])
  end

  def create
    @court = FavoriteCourt.create(user_id: params["user_id"], court_id: params["court_id"])
    render json: @court
  end

  def destroy
    render json: FavoriteCourt.find_by(user_id: params["user_id"], court_id: params["court_id"]).destroy
  end

end
