class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name,          null: false
      t.string      :image,         null: false
      t.string      :status,        null: false
      t.string      :item_status,   null: false
      t.integer     :price,         null: false
      t.string      :delivery_charge_burden, null: false
      t.string      :days_up_to_delivery, null: false
      t.string      :prefecture,    null: false
      t.integer     :profile_id,    null: false, foreign_key: true
      t.integer     :category_id,   null: false, foreign_key: true
      t.integer     :perchaser_user_id, null: false, foreign_key: true
      t.integer     :saler_user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
