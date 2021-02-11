class OffersController < ApplicationController
  def select_item
    skip_authorization
    @my_items = Item.all.select { |item| item.user_id == current_user.id && item.active }
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
    @my_offers = offers.select { |offer| offer.receiver_user == current_user && offer.status == 0 }
  end

  def offer_decline
    offer = Offer.find(params[:id])
    authorize offer
    offer.update(status: 2)
    flash[:notice] = 'Swap rejected!'
    redirect_to offers_path
  end

  def offer_confirm
    @offer = Offer.find(params[:id])
    authorize @offer
    if @offer.asker.active == true && @offer.receiver.active == true
      # make sure to disable item
      item_1 = Item.find(@offer.asker.id)
      item_1.update(active: false)
      item_2 = Item.find(@offer.receiver.id)
      item_2.update(active: false)
      # auto decline all offers which involve either asker or receiver of confirmed offer
      offers = Offer.all.select { |offer| (offer.asker.id == @offer.asker.id || offer.asker.id == @offer.receiver.id || offer.receiver.id == @offer.asker.id || offer.receiver.id == @offer.receiver.id) && offer.id != @offer.id }
      offers.each { |offer| offer.update(status: 2) }
      @offer.update(status: 1)
      flash[:notice] = 'Swap accepted!'
    else
      flash[:notice] = 'The item has already been swapped. Sorry!'
    end
    redirect_to offers_path
  end

  def my_swaps
    @offers = Offer.all
    authorize @offers
    @my_swaps = @offers.select { |offer| (offer.receiver_user == current_user || offer.asker_user == current_user) && offer.status == 1 }
  end

  protected

  def offer_params
    params.require(:offer).permit(:asker_id, :receiver_id)
  end
end
