class AddQuantityToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :quantity, :integer
  end
end
