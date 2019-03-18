class AddDescriptionToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :description, :string, null: false
  end
end
