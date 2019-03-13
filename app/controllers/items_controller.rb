class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Items.find(1)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
    @item = Item.new
  end

  def create
    
  end
end
