class DropCategoryTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :category_tables
  end
end
