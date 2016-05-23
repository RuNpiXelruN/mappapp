class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location), notice: 'Location successfully added'
    else
      render :new, notice: 'Something went wrong'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to @location, notice: 'Successfully updated Location'
    else
      render :edit, notice: 'Something went wrong'
    end
  end

  private
  def location_params
    params.require(:location).permit(:street, :suburb, :state, :country, :postcode)
  end
end
