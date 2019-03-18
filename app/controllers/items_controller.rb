class ItemsController < ApplicationController
  def index
  	@items = Item.all.order('id ASC').limit(4)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    
  end
end
