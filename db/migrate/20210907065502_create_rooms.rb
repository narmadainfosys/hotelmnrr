class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_no
      t.boolean :availabilty
      t.string :price
      t.string :image
      t.string :floor

      t.timestamps
    end
  end
end
