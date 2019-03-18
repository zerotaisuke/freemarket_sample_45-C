class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name,          null: false

      t.string      :status,        null: false

      t.integer     :price,         null: false
      t.string      :delivery_charge_burden, null: false
      t.string      :days_up_to_delivery, null: false
      t.string      :prefecture,    null: false
      t.integer     :brand_id
      t.integer     :category_id
      t.references  :user,          null: false, foreign_key: true
      t.string      :description,   null: false


      t.timestamps
    end
  end
end
