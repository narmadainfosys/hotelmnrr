class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :orderid
      t.string :name
      t.string :category
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
