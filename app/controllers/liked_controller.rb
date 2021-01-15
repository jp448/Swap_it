class LikedController < ApplicationController
  def index
    @likes = policy_scope(Liked)
    @likes = Liked.where(user_id: current_user.id).to_a
    @liked_items = []
    @likes.each do |like|
      @liked_items << Item.find(like.item_id)
    end
  end

  def create
    params[:user_id] = current_user.id
    @like = Liked.new(like_params)
    skip_authorization
    if @like.save
      flash[:notice] = 'Item Saved!'
    else
      flash[:alert] = @like.errors.full_messages.join(', ')
    end
    redirect_to item_path(@like.item)
  end

  def destroy
    @like = Liked.find(params[:id])
    if !@like.nil? && current_user.id == @like.user_id
      @like.destroy
      flash[:notice] = 'Item Removed!'
    else
      flash[:alert] = @like.errors.full_messages.join(', ')
    end
    skip_authorization
    redirect_to item_path(@like.item)
  end

  protected

  def like_params
    params.permit(:user_id, :item_id)
  end
end
