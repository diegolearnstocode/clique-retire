class CreateDelivererOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :deliverer_orders do |t|
      t.string :qr_code
      t.references :e_boxes, null: false, foreign_key: true
      t.references :orders, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
