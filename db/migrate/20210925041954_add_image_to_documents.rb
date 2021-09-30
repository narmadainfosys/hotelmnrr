class AddImageToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :image, :string
  end
end
