class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @users = @group.users

  end


    def edit
    @group = Group.find(params[:id])
  end
end
