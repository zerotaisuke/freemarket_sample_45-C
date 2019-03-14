class RemoveStatusFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :item_status, :string, null: false
  end
end
