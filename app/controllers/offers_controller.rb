class OffersController < ApplicationController
  def select_item
    skip_authorization
    @my_items = Item.where(user_id: current_user.id).to_a
    @requested_item = Item.find(params[:item_id])
  end

  def new
    skip_authorization
    @requested_item = Item.find(params[:item_id])
    @selected_item = Item.find(params[:item])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    authorize @offer
    @offer.status = 0
    if @offer.asker != @offer.receiver && @offer.asker.user == current_user && @offer.save!
      redirect_to swaped_path
    else
      render :new
    end
  end

  def index
    offers = Offer.all
    offers = policy_scope(Offer)
    @my_offers = offers.select { |offer| offer.receiver_user == current_user }
  end

  def offer_request
  end

  def offer_confirm
  end

  protected

  def offer_params
    params.require(:offer).permit(:asker_id, :receiver_id)
  end
end
