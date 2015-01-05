class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :state
      t.datetime :completed_date
      t.belongs_to :user, index: true
      t.belongs_to :credit_card, index: true
      t.integer :billing_address_id, index: true
      t.integer :shipping_address_id, index: true

      t.timestamps
    end
  end
end
