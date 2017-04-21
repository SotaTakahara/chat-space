class GroupsController < ApplicationController
   before_action :move_to_index, except: :index

  def index
  end

  def new
    @group = Group.new
  end

  def create
    Group.create(name: group_params[:name])
    redirect_to action: :index 
  end

  def edit
    @group = Group.find(params[:id])
  end
  
  def update
    group = Group.find(params[:id])
    group.update(group_params)
    redirect_to root_path
  end
  private

   def group_params
     params.require(:chat_group).permit(:name)
   end

   def move_to_index
     redirect_to action: :index unless user_signed_in?
   end
end
