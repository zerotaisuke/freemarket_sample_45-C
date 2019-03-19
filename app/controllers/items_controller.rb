class ItemsController < ApplicationController
  before_action :set_target_item, only: %i[show edit update destroy]

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
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path, notice: "「#{@item.name}」を出品しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update

    unless current_user.items.find(params[:id])
      redirect_to items_path, notice: "出品者でないため編集できません"
    else
      if @item.update(item_params)
        redirect_to action: "show", notice: "「#{@item.name}」を編集しました"
      else
        render :show
      end
    end

  end

  def destroy

    unless @item.user_id == current_user.id
      redirect_to items_path, notice: "出品者でないため削除できません"
    else
      if @item.destroy
        redirect_to items_path, notice: "「#{@item.name}」を削除しました"
      else
        render :show
      end
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

  def set_target_item
    @item = Item.find(params[:id])
  end


end
