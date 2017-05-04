class GroupsController < ApplicationController
   before_action :move_to_index, except: :index

  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: "グループを作成しました"
    else
      flash.now[:alert] = "グループ名を入力してください"
      render :new
    end
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
     params.require(:group).permit(:name)
   end

   def move_to_index
     redirect_to action: :index unless user_signed_in?
   end
end
