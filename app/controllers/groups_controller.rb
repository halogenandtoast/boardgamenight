class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @members = @group.members
  end

  def new
    @group = Group.new
  end

  def create
    group = Group.create(group_params)
    current_user.join(group)
    redirect_to group
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end
end
