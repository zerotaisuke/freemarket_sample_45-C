class RemoveColumnsFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :profile_id, :integer
    remove_column :items, :category_id, :integer
    remove_column :items, :perchaser_user_id, :integer
    remove_column :items, :saler_user_id, :integer
  end
end
