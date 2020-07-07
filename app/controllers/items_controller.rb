class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    @items = policy_scope(Item)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = item.new(item_params)
    @item.user = current_user
    authorize @item
    if @item.save!
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    authorize @item
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to items_path, notice: 'The item was successfully destroyed.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def restaurant_params
    params.require(:item).permit(:title, :price, :description)
  end
end
