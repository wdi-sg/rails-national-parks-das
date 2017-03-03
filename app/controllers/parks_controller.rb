class ParksController < ApplicationController
  def index
    @parks = Park.all

    respond_to do |format|
      format.html
      format.json{render json: @parks}
    end
  end

  def show
    @parks = Park.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @park }
    end
  end

  def new
    @new_park=Park.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
