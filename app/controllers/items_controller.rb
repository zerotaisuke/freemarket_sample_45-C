class ItemsController < ApplicationController
  before_action :set_target_item, only: %i[show edit update destroy]

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

  def edit
  end

  def update
  end

  def destroy
    @item.destroy
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

  def set_target_item
    @item = Item.find(params[:id])
  end


end
