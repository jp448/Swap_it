class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tags = Tag.all.reverse
    items = Item.all
    @tags_imgs = []
    @tags.each do |tag|
      selected_item = items.find { |item| item.tags.include? tag }
      unless selected_item.nil?
        @tags_imgs << selected_item
      else
        @tags_imgs << items[0]
      end
    end
  end

  def swaped; end

  def components; end
end
