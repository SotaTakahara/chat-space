  class MessagesController < ApplicationController
    before_action :often_time_used


  def index
    @message = Message.new
    @messages = @group.messages
  end

  def new
  end

  def create
    @message = current_user.messages.new(message_params)
     if @message.save
       redirect_to group_messages_path(@group)
     else
       redirect_to group_messages_path(@group),alert: '送信したいメッセージがありません。'
     end
  end


  def edit
    @group = Group.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(group_id: params[:group_id],user_id: current_user.id)
  end

  def often_time_used
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @users = @group.users
  end

  end
