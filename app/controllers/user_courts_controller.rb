class UserCourtsController < ApplicationController

  def index
    render json: UserCourt.all
  end

  def create
    @user = UserCourt.find_by(user_id: params["user_id"], court_id: params["court_id"])
    if !@user
      @usercourt = UserCourt.create(user_id: params["user_id"], court_id: params["court_id"])
      render json: {user: @usercourt.user, error: false}
    else
      render json: {user: @user, error: true}
    end
  end

end

# if !@user
#   @usercourt = UserCourt.create(user_id: params["user_id"], court_id: params["court_id"] )
#   render json: @usercourt.user
# else
#   render json: @user
# end
