class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @users = @group.users
    @message = Message.new
    @messages = @group.messages
  end

  def new
  end

  def create
     @message = current_user.messages.new(message_params)
     @group = Group.find(params[:group_id])
     @groups = current_user.groups
      @users = @group.users
     if @message.save
       redirect_to group_messages_path(@group.id)
     else
       flash.now[:alert] = "送信したいメッセージがありません。"
       render :index
     end
     
    end


  def edit
  @group = Group.find(params[:id])
  end

     def message_params
     params.require(:message).permit(:text).merge(group_id: params[:group_id],user_id: current_user.id)
   end
end
