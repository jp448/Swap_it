class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @items = Item.all.reverse
  end

  def swaped; end

  def components; end
end
