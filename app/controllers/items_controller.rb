class ItemsController < ApplicationController
  def index
  	@items = Item.all.order('id ASC').limit(4)
  end

  def show
    @item = Item.find(params[:id])
    @others = Item.where(user_id: @item.user_id).where.not(id: @item.id).order("RAND()").limit(6)
  end

  def new
    @item = Item.new
  end

  def create
  end
end
