class ChatGroupsController < ApplicationController
  def index
    @chat_groups = ChatGroup.all
    @users = User.all
  end

  def create
    if ChatGroup.between(params[:user_1_id], params[:user_2_id]).present?
      @chat_group = ChatGroup.between(params[:user_1_id], params[:user_2_id]).first!
    else
      @chat_group = ChatGroup.create!(chat_group_params)
    end

    redirect_to chat_group_messages_path(@chat_group)
  end

  private
    def chat_group_params
      params.permit(:user_1_id, :user_2_id)
    end
end
