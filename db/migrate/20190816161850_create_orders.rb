class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.string :adress
      t.string :zip_code
      t.string :country
      t.string :first_name
      t.string :last_name
      t.string :company_name

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
