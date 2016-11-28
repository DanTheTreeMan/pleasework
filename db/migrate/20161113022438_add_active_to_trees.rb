class AddActiveToTrees < ActiveRecord::Migration[5.0]
  def change
    add_column :trees, :active, :boolean
  end
end
