class CourtsController < ApplicationController

  def index
    render json: Court.all
  end

  def show
    render json: Court.find(params[:id])
  end

end
