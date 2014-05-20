class LocationsController < ApplicationController
  def new
    @group = find_group
    @location = Location.new
  end

  def show
    @group = find_group
    @location = find_group_location(@group)
  end

  def create
    @group = find_group
    @group.locations.create(location_params)
    redirect_to @group
  end

  def update
    @group = find_group
    @location = find_group_location(@group)
    @location.update(location_params)
    redirect_to @group
  end

  private

  def find_group
    Group.find(params[:group_id])
  end

  def find_group_location(group)
    group.locations.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :recurrence_rules, :starts_on)
  end
end
