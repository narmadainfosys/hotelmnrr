class RemoveAdminFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :admin, :string
  end
end