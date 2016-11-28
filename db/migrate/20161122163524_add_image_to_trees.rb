class AddImageToTrees < ActiveRecord::Migration[5.0]
  def change
    add_column :trees, :image, :string
  end
end
