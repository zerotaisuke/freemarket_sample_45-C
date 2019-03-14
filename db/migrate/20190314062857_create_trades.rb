class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string     :status,                  null: false, default: "未成約"
      t.integer    :parcaser_evaluation,     null: false, default: 0
      t.integer    :saler_evaluation,        null: false, default: 0
      t.references :item,                    foreign_key: true
    end
  end
end
