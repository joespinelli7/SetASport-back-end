class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def signin
    render json: User.find_by(user_name: params["username"], password: params["password"])
  end

end
