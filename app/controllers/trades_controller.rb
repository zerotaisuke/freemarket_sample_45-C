class TradesController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    trade_params = {item_id: @item.id, saler_user_id: @item.user_id, parcaser_user_id: current_user.id }
    trade = Trade.new(trade_params)

    if trade.save
      redirect_to items_path, notice: "「#{@item.name}」を購入しました。"
    else
      render :new
    end
  end
end
