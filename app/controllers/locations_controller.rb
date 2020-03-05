class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
  end

  private

  def location_params
    params.require(:location).permit(:city)
  end
end
