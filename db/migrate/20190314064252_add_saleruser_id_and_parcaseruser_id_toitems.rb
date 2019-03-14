class AddSaleruserIdAndParcaseruserIdToitems < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :saler_user_id, :integer
    add_column :trades, :parcaser_user_id, :integer
  end
end
