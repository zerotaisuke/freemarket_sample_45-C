class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id,         null: false
      t.string  :name,            null: false
      t.string  :nickname,        null: false
      t.date    :birthdate,       null: false
      t.integer :postal_code,     null: false
      t.string  :prefecture,      null: false
      t.string  :municipality,
      t.string  :block,
      t.integer :sales_money,     null: false, default: 0
      t.integer :mercari_point,   null: false, default: 0
      t.string  :payment_methods  null: false

      t.timestamps
    end
  end
end
