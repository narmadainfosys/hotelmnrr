class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :orderid
      t.string :category
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
