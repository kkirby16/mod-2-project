class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def index
    @locations = Location.all #if have specific items at a location.
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.create(location_params)
  end

  private

  def location_params
    params.require(:location).permit(:city)
  end
end
