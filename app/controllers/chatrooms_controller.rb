class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def index
    @chatrooms = Chatroom.joins(:item).where(items: { user: current_user }).or(Chatroom.joins(:item).where(user: current_user))
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    # chatroom routine
    @message = Message.new
    skip_authorization
  end

  def new
    skip_authorization
    if params[:user].nil?
      # check if opened from index
      @chatroom = Chatroom.find(params[:id])
    else
      # needs if statement to check for exiting convo
      item = Item.find(params[:item])
      buyer = User.find(params[:user])
      @chatroom = Chatroom.where(item: item, user: buyer).first

      if @chatroom.nil?

        # start new chatroom needs buyer id and item id
        @chatroom = Chatroom.new(
          item: item,
          user: buyer
        )
        @chatroom.save
      end
    end
    redirect_to chatroom_path(@chatroom)
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
