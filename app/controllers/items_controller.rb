class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path, notice: "タスク「#{@item.name}」を登録しました。"
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:avatar,
                                 :name,
                                 :description,
                                 :category_id,
                                 :status,
                                 :delivery_charge_burden,
                                 :prefecture,
                                 :days_up_to_delivery,
                                 :price).merge(user_id: current_user.id)
  end

end
