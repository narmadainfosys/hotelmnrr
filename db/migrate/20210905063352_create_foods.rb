class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.boolean :availability
      t.string :price

      t.timestamps
    end
  end
end
