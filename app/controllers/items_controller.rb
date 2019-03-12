class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def search
  	 @items = Item.where('title LIKE(?)', "%#{params[:keyword]}%").limit(1)
  end
end
