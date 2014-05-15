class LocationsController < ApplicationController
  def new
    @group = find_group
    @location = Location.new
  end

  def create
    @group = find_group
    @group.locations.create(location_params)
    redirect_to @group
  end

  private

  def find_group
    Group.find(params[:group_id])
  end

  def location_params
    params.require(:location).permit(:name)
  end
end
