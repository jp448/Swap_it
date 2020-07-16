class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    @items = policy_scope(Item)
    if params[:tags].present?
      @selected_tags = params[:tags].split(",")
      @items = Item.joins(:tags).where(tags: { name: @selected_tags }).group('items.id').having("count('tags.name') = ?", @selected_tags.size)
    else
      @selected_tags = []
    end

    @tags = Tag.all

    users = []
    @items.each do |item|
      users.append(item.user)
    end

    users = users.uniq
    users.each do |user|
      coords = user.geocode
      user.longitude = coords[1]
      user.latitude = coords[0]
    end

    @markers = users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
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
    @item = Item.new(item_params)
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

  def item_params
    params.require(:item).permit(:title, :price, :description)
  end
end
