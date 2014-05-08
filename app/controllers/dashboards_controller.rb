class DashboardsController < ApplicationController
  def show
    @groups = current_user.groups
  end
end
