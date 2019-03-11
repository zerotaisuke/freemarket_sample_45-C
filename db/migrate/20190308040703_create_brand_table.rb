class CreateBrandTable < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_tables do |t|
      t.string :name, null: false
    end
  end
end
