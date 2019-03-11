class DropBrandTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :brand_tables
  end
end
