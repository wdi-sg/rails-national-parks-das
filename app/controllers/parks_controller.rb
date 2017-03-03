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
    @new_park = Park.new(park_params)

    if @new_park.save
      respond_to do |format|
        format.html {redirect_to parks_path}
        format.json { render json: {message: 'Success creating new park'} }
      end
    else
      render 'new'
      #code
    end
  end

  def edit
    @edit_park = Park.find(params[:id])
    # respond_to do |format|
    #   format.html
    #   format.json {render json: @edit_park}
    # end
  end

  def update
    @edit_park = Park.find(params[:id])
    if @edit_park.update_attributes(park_params)
      respond_to do |format|
        format.html {redirect_to parks_path}
        format.json {render json: {message: 'successfully updated'}}
          end
            else
              render 'edit'
        end

      end
    #send the edit request (hint: not post method)
    #find an existing park object with the id from form_data
      #save the updated park object
      #if can save, redirect to parks_path
      #else render the edit page

  def destroy

  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
