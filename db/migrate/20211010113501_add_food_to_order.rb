class AddFoodToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :food, null: false, foreign_key: true
  end
end
