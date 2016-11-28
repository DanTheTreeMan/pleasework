class AddIdToTree < ActiveRecord::Migration[5.0]
  def change
    add_column :trees, :category_id, :integer
  end
end
