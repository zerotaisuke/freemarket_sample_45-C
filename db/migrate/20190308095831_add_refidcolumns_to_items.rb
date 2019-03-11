class AddRefidcolumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :category_id, :integer
    add_column :items, :brand_id, :integer
    add_column :items, :user_id, :integer
  end
end
