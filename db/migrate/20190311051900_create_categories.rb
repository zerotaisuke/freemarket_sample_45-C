class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :parent_id, null: false
      t.string  :name,      null: false
    end
  end
end
