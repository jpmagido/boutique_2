class CreateJtOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :jt_order_items do |t|
      t.belongs_to :order, index: true
      t.belongs_to :jt_cart_items, index: true

      t.timestamps
    end
  end
end
