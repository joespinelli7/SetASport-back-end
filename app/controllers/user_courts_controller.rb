class UserCourtsController < ApplicationController

  def index
    render json: UserCourt.all
  end

  def show
    render json: UserCourt.find(params[:id])
  end

  def create
    @user = UserCourt.find_by(user_id: params["user_id"], court_id: params["court_id"])
    if !@user
      @usercourt = UserCourt.create(user_id: params["user_id"], court_id: params["court_id"])
      render json: {user: @usercourt.user, user_courts: @usercourt, error: false}
    else
      render json: {user: @user, error: true}
    end
  end

  def destroy
    render json: UserCourt.find(params[:id]).destroy
  end

end

# if !@user
#   @usercourt = UserCourt.create(user_id: params["user_id"], court_id: params["court_id"] )
#   render json: @usercourt.user
# else
#   render json: @user
# end
